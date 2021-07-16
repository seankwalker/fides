insert into DATA_CATEGORY(id, parent_id, `key`, `name`, clause, description) values(1,1, "customer_content_data","Customer content data","8.2.2","Customer content data is cloud service customer data extended to include similar data objects provided to applications executing locally on the device. Notice that the locally executing application may or may not choose to share that data with the cloud service and yet the data would still fit in this extended definition. This includes content directly created by customers and their users and all data, including all text, sound, software or image files that customers provide to the cloud service, or are provided to the cloud service on behalf of customers, through the capabilities of the service or application. This also includes data that the user intentionally creates through the use of the application or cloud service, such as documents, processed data sets, modified images, recorded sounds, etc. When customer content data local to the device is transmitted to the cloud service, it becomes cloud service customer data.

Specific types of information in customer content data may require explicit use statements by the cloud services provider to the extent that the CSPs are aware of their presence.");
insert into DATA_CATEGORY(id, parent_id, `key`, `name`, clause, description) values(2,1, "credentials","Credentials","8.2.2.2","Data provided by the customer to identify a user to the device, application or cloud service, e.g. passwords, password hints, etc., including biometric data provided for identification. The set of credentials data are a sub-type of customer content data.");
insert into DATA_CATEGORY(id, parent_id, `key`, `name`, clause, description) values(3,1, "customer_contact_lists","Customer contact lists","8.2.2.3","Contact information for people that the cloud service customer provides, or is provided to the service on customers’ behalf, through the capabilities of the service. Customer contact list data is a sub-type of customer content data.
NOTE 1 Cloud services can have a distinction between the cloud service customer and the cloud service users associated with that customer. Cloud service user contact list information provided by the cloud service customer to the cloud service provider is also customer content data.
NOTE 2 Contact information provided solely to support, to administer or to make payment for the service is account or administration contact information (see 8.2.5.2).");
insert into DATA_CATEGORY(id, parent_id, `key`, `name`, clause, description) values(4,1, "personal_health_data_and_medical_records","Personal health data and medical records","8.2.2.4","Personal health data and medical records are a form of sensitive personal data relating to an individual. The processing of this type of data is heavily regulated in many jurisdictions (e.g. Health Insurance Portability and Accountability Act [HIPAA] in the USA and Personal Information Protection and Electronic Documents Act [PIPEDA] in Canada[20]).");
insert into DATA_CATEGORY(id, parent_id, `key`, `name`, clause, description) values(5,1, "personal_genetic_data","Personal genetic data","8.2.2.5","Personal genetic data is information about the genetic makeup of an individual (e.g. DNA record).");
insert into DATA_CATEGORY(id, parent_id, `key`, `name`, clause, description) values(6,1, "personal_biometric_data","Personal biometric data","8.2.2.6","Personal biometric data is encoded data that describes certain characteristics of an individual (e.g. fingerprints, face geometry, iris pattern). For example, the voice prints of the human vocal cords and the posture maintained when walking (as used in Japan's Amended Act on the Protection of Personal Information)[19].");
insert into DATA_CATEGORY(id, parent_id, `key`, `name`, clause, description) values(7,1, "personal_data_of_children","Personal data of children","8.2.2.7","Personal data relating to children is regarded as sensitive personal data and is subject to more stringent regulations and compliance rules (e.g. General Data Protection Regulation (GDPR)[17] in the European Union).");
insert into DATA_CATEGORY(id, parent_id, `key`, `name`, clause, description) values(8,1, "political_opinions","Political opinions","8.2.2.8","Political opinions of an individual are personal data that is often subject to special rules and regulations.");
insert into DATA_CATEGORY(id, parent_id, `key`, `name`, clause, description) values(9,1, "financial_details","Financial details","8.2.2.9","Financial details relating to an individual include information about accounts, credit cards, payments and credit history. This is usually regarded as sensitive personal information subject to particular regulations.
Financial details relating to an organization as organizational data include information about tax records such as invoices, accounting documents or documents supporting company registration.");
insert into DATA_CATEGORY(id, parent_id, `key`, `name`, clause, description) values(10,1, "sensor_measurement_data","Sensor measurement data","8.2.2.10","Data that has been obtained from a measurement sensor. Sensor measurement data are typically organizational data and may even exist in mixed dataset; examples are precision farming (helping to monitor and optimize the use of pesticides, nutrients and water), data about temperature or wind speed from wind turbines, data obtained from industrial robots measuring the environmental elements around them.");
insert into DATA_CATEGORY(id, parent_id, `key`, `name`, clause, description) values(11,11, "derived_data","Derived data","8.2.3","Derived data is cloud service derived data extended to include similar data objects derived as a user exercises the capabilities of an application executing locally on the device. When the local portion of the data is transmitted to the cloud service, it becomes cloud service derived data.");
insert into DATA_CATEGORY(id, parent_id, `key`, `name`, clause, description) values(12,11, "end_user_identifiable_information","End user identifiable information (EUII)","8.2.3.2","EUII is linkable to the user but is not customer content data. EUII is a sub-type of derived data.
NOTE The term customer, user and tenant are used in the same way as cloud service customer, cloud service user and cloud service tenant in ISO/IEC 17788, with the definition of “customer” extended to include users of applications. In many services, a single individual fulfils all client-side roles, including user, customer and administrator. Customer, when used alone, is assumed to represent all three roles.");
insert into DATA_CATEGORY(id, parent_id, `key`, `name`, clause, description) values(13,12, "telemetry_data","Telemetry data","8.2.3.2.2","This refers to data collected about the capabilities of the product or service. Examples are measurement, performance and operations data. Telemetry data represents information about the capability and its use, with a focus on providing the capabilities of the product or service. Telemetry data may contain information about one or more users and is a sub-type of EUII (see 9.3.2).");
insert into DATA_CATEGORY(id, parent_id, `key`, `name`, clause, description) values(14,12, "connectivity_data","Connectivity data","8.2.3.2.3","This refers to data that describes the connections and configuration of the devices connected to the service and the network, including device identifiers, (e.g. IP addresses) configuration, settings and performance. Connectivity data is a sub-type of EUII.");
insert into DATA_CATEGORY(id, parent_id, `key`, `name`, clause, description) values(15,12, "observed_usage_of_the_service_capability","Observed usage of the service capability","8.2.3.2.4","This refers to data provided or captured about the users’ interaction with the service or products by the cloud service provider. Captured data includes the records of the users’ preferences and settings for capabilities, the capabilities used and commands provided to the capabilities. Usage data is a sub-type of EUII.");
insert into DATA_CATEGORY(id, parent_id, `key`, `name`, clause, description) values(16,12, "demographic_information","Demographic information","8.2.3.2.5","This refers to data containing demographic information about the end user provided or gathered though use of the capabilities of the application or cloud service. Demographic information is a sub- type of EUII.");
insert into DATA_CATEGORY(id, parent_id, `key`, `name`, clause, description) values(17,12, "profiling_data","Profiling data","8.2.3.2.6","This refers to data provided or acquired about a users’ interests and preferences relating to content, organizations or objects outside of the service, e.g. sports teams, businesses, products, etc. Profiling data is a sub-type of EUII.");
insert into DATA_CATEGORY(id, parent_id, `key`, `name`, clause, description) values(18,12, "content_consumption_data","Content consumption data","8.2.3.2.7","This refers to data about media content that a customer accesses through the capabilities of the service, e.g. TV, video, music, audio or text books, applications and games. Content consumption data is a sub- type of EUII.
NOTE 1 Content consumption data is distinct from usage data collected when the user accesses customer content data.
NOTE 2 Content consumption data is distinct from client-side browsing history collected when accessing information accessed or available on the web.");
insert into DATA_CATEGORY(id, parent_id, `key`, `name`, clause, description) values(19,12, "client_side_browsing_history","Client-side browsing history","8.2.3.2.8","This refers to data in the form of records of the web browsing history when using the capabilities of the applications or cloud services stored in the service or application. Client-side browsing history data is a sub-type of EUII.
NOTE A record of the websites viewed by the user captured by a web browser is an example of a client-side browsing history. In some instances, certain legal obligations may be defined, e.g. UK Investigatory Powers Act 2016[18].");
insert into DATA_CATEGORY(id, parent_id, `key`, `name`, clause, description) values(20,12, "search_commands_and_queries","Search commands and queries","8.2.3.2.9","This refers to data in the form of records of search commands or queries provided by the user to the service or product. Search commands and queries data are a sub-type of EUII.");
insert into DATA_CATEGORY(id, parent_id, `key`, `name`, clause, description) values(21,12, "user_location","User location","8.2.3.2.10","This refers to data in the form of records of the location of the user within a specified degree of precision. User location data is a sub-type of EUII.");
insert into DATA_CATEGORY(id, parent_id, `key`, `name`, clause, description) values(22,12, "social_data","Social data","8.2.3.2.11","This refers to data in the form of records of interaction between the user, other people and organizations. This includes friends’ lists and information about types of interactions (e.g. likes, dislikes, events, etc.) related to people and/or entities/ businesses which collectively encompass social graph data. Social data is a sub-type of EUII.
NOTE 1 A customer’s own contact information is account or administration contact information (see 8.2.5.2).
NOTE 2 User’s contact list maintained explicitly as such and entered by the cloud service user or customer using the capabilities of the service is called a “customer contact list” and is considered customer content data.");
insert into DATA_CATEGORY(id, parent_id, `key`, `name`, clause, description) values(23,12, "biometric_and_health_data","Biometric and health data","8.2.3.2.12","This refers to data in the form of metrics about the (human) user’s inherent characteristics collected by the application or service’s capabilities. Biometric and health data are a sub-type of EUII. For example, the voice prints of the human vocal cords and the posture maintained when walking (as used in Japan's Amended Act on the Protection of Personal Information)[19].
NOTE 1 Biometric data provided to the system or application for identification areconsidered credentials (see 8.2.2.2).
NOTE 2 Personal biometric data (see 8.2.2.6) entered by the user are customer content data.");
insert into DATA_CATEGORY(id, parent_id, `key`, `name`, clause, description) values(24,12, "end_user_contact_data","End-user contact data","8.2.3.2.13","This refers to data in the form of contact information for a cloud service user. End-user contact data is a sub-type of EUII.
NOTE End-user contact data is different from customer contact lists (see 8.2.2.3) or account or administration contact information (see 8.2.5.2). This data type is captured or generated as the user interacts with the cloudservice.");
insert into DATA_CATEGORY(id, parent_id, `key`, `name`, clause, description) values(25,12, "users_environmental_sensor_data","User’s environmental sensor data","8.2.3.2.14","This refers to data in the form of the physical environment captured by sensors as the user exercises an application or cloud service’s capabilities. User’s environmental sensor data is a sub-type of EUII.");
insert into DATA_CATEGORY(id, parent_id, `key`, `name`, clause, description) values(26,11, "organization_identifiable_information","Organization identifiable information (OII)","8.2.3.3","OII is the data that can be used to identify a particular tenant (general configuration or usage data); is not linkable to a user and does not contain customer content data. This also includes data aggregated from the users of a tenant that is not linkable to the individual user. OII data is a sub-type of derived data.");
insert into DATA_CATEGORY(id, parent_id, `key`, `name`, clause, description) values(27,27, "cloud_service_provider_data","Cloud service provider data","8.2.4","Cloud service provider data (as defined in ISO/IEC 17788) is unique to the system and under the control of the cloud service provider.
NOTE Cloud service provider data does not include customer content or derived data.");
insert into DATA_CATEGORY(id, parent_id, `key`, `name`, clause, description) values(28,27, "access_and_authentication_data","Access and authentication data","8.2.4.2","This refers to data used within the cloud service to manage access to other categories of data or capabilities within the service. It includes passwords, security certificates and other authentication- related data. Access control data is a sub-type of cloud service provider data.");
insert into DATA_CATEGORY(id, parent_id, `key`, `name`, clause, description) values(29,27, "operations_data","Operations data","8.2.4.3","This refers to the data which is used for supporting the operation of cloud service providers and system maintenance, such as service logs, technical information about a subscription (e.g. service topology), technical information about a tenant (e.g. customer role name), configuration settings/files.");
insert into DATA_CATEGORY(id, parent_id, `key`, `name`, clause, description) values(30,30, "account_data","Account data","8.2.5","Account data is a class of data specific to each cloud service customer that is required to sign up for, purchase or administer the cloud service. This data includes information such as names, addresses, payment information, etc. Account data is generally under the control of the cloud service provider although each cloud service customer usually has the capability to input, read and edit their own account data but not the records of other cloud service customers. See ISO/IEC 19086-1.");
insert into DATA_CATEGORY(id, parent_id, `key`, `name`, clause, description) values(31,30, "account_or_administration_contact_information","Account or administration contact information","8.2.5.2","This refers to the contact information for a customer of an application or cloud service and any cloud service administrators and cloud service business managers designated to administer and control the use of the service. Account or administration contact information is a sub-type of account data.");
insert into DATA_CATEGORY(id, parent_id, `key`, `name`, clause, description) values(32,30, "payment_instrument_data","Payment instrument data","8.2.5.3","This refers to data provided by the cloud service customer for the purpose of making payment for the services, or to pay for products or services bought through the services. Payment instrument data is a subset of account data.");