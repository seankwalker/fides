from __future__ import annotations

from typing import Any

from fides.api.ops.common_exceptions import NoSuchConnectionTypeSecretSchemaError
from fides.api.ops.models.connectionconfig import ConnectionType
from fides.api.ops.schemas.connection_configuration import (
    SaaSSchemaFactory,
    secrets_schemas,
)
from fides.api.ops.schemas.connection_configuration.connection_config import (
    ConnectionSystemTypeMap,
    SystemType,
)
from fides.api.ops.schemas.saas.saas_config import SaaSConfig
from fides.api.ops.service.connectors.saas.connector_registry_service import (
    load_registry,
    registry_file,
)
from fides.api.ops.util.saas_util import encode_file_contents, load_config


def connection_type_secret_schema(*, connection_type: str) -> dict[str, Any]:
    """Returns the secret fields that should be supplied to authenticate with a particular connection type.

    Note that this does not return actual secrets, instead we return the *types* of
    secret fields needed to authenticate.
    """
    connection_system_types: list[ConnectionSystemTypeMap] = get_connection_types()
    if not any(item.identifier == connection_type for item in connection_system_types):
        raise NoSuchConnectionTypeSecretSchemaError(
            f"No connection type found with name '{connection_type}'."
        )

    if connection_type in [db_type.value for db_type in ConnectionType]:
        return secrets_schemas[connection_type].schema()

    config = SaaSConfig(**load_config(f"data/saas/config/{connection_type}_config.yml"))
    schema = SaaSSchemaFactory(config).get_saas_schema().schema()

    # rearrange the default order of the properties generated by Pydantic
    # to reflect the order defined in the connector_params and external_references
    order = [connector_param.name for connector_param in config.connector_params]
    if config.external_references:
        order.extend(
            [
                external_reference.name
                for external_reference in config.external_references
            ]
        )

    schema["properties"] = {
        name: value
        for name, value in sorted(
            schema["properties"].items(), key=lambda item: order.index(item[0])
        )
    }
    return schema


def get_connection_types(
    search: str | None = None, system_type: SystemType | None = None
) -> list[ConnectionSystemTypeMap]:
    def is_match(elem: str) -> bool:
        """If a search query param was included, is it a substring of an available connector type?"""
        return search.lower() in elem.lower() if search else True

    connection_system_types: list[ConnectionSystemTypeMap] = []
    if system_type == SystemType.database or system_type is None:
        database_types: list[str] = sorted(
            [
                conn_type.value
                for conn_type in ConnectionType
                if conn_type
                not in [
                    ConnectionType.saas,
                    ConnectionType.https,
                    ConnectionType.manual,
                    ConnectionType.email,
                    ConnectionType.manual_webhook,
                    ConnectionType.fides,
                ]
                and is_match(conn_type.value)
            ]
        )
        connection_system_types.extend(
            [
                ConnectionSystemTypeMap(
                    identifier=item,
                    type=SystemType.database,
                    human_readable=ConnectionType(item).human_readable,
                )
                for item in database_types
            ]
        )
    if system_type == SystemType.saas or system_type is None:
        registry = load_registry(registry_file)
        saas_types: list[str] = sorted(
            [
                saas_type
                for saas_type in registry.connector_types()
                if is_match(saas_type)
            ]
        )

        for item in saas_types:
            if registry.get_connector_template(item) is not None:
                connector_template = registry.get_connector_template(  # type: ignore[union-attr]
                    item
                )

            connection_system_types.append(
                ConnectionSystemTypeMap(
                    identifier=item,
                    type=SystemType.saas,
                    human_readable=connector_template.human_readable
                    if connector_template is not None
                    else "",
                    encoded_icon=encode_file_contents(connector_template.icon)
                    if connector_template is not None
                    else None,
                )
            )

    if system_type == SystemType.manual or system_type is None:
        manual_types: list[str] = sorted(
            [
                manual_type.value
                for manual_type in ConnectionType
                if manual_type == ConnectionType.manual_webhook
                and is_match(manual_type.value)
            ]
        )
        connection_system_types.extend(
            [
                ConnectionSystemTypeMap(
                    identifier=item,
                    type=SystemType.manual,
                    human_readable=ConnectionType(item).human_readable,
                )
                for item in manual_types
            ]
        )
    return connection_system_types