import SelectDropdown from "common/dropdown/SelectDropdown";
import React from "react";
import { useSelector } from "react-redux";

import { useAppDispatch } from "~/app/hooks";

import { CONNECTION_TYPE_FILTER_MAP } from "../add-connection/constants";
import {
  selectDatastoreConnectionFilters,
  setSystemType,
} from "../datastore-connection.slice";

export type SystemTypeFilterProps = {
  width?: string;
};

const SystemTypeFilter: React.FC<SystemTypeFilterProps> = ({ width }) => {
  // eslint-disable-next-line @typescript-eslint/naming-convention
  const { system_type } = useSelector(selectDatastoreConnectionFilters);

  const list = new Map(CONNECTION_TYPE_FILTER_MAP);
  list.delete("Show all");

  // Hooks
  const dispatch = useAppDispatch();

  // Listeners
  const handleChange = (value?: string) => {
    dispatch(setSystemType(value || ""));
  };

  return (
    <SelectDropdown
      enableSorting={false}
      label="System Type"
      list={list}
      onChange={handleChange}
      selectedValue={system_type?.toString()}
      width={width}
    />
  );
};

export default SystemTypeFilter;
