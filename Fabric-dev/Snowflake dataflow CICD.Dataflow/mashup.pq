[StagingDefinition = [Kind = "FastCopy"]]
section Section1;
[DataDestinations = {[Definition = [Kind = "Reference", QueryName = "DIM_LOCATION_DataDestination", IsNewTarget = true], Settings = [Kind = "Automatic", TypeSettings = [Kind = "Table"]]]}]
shared DIM_LOCATION = let
  Source = Snowflake.Databases("ik75653.central-india.azure.snowflakecomputing.com", "COMPUTE_WH", [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null, Implementation = "2.0"]),
  #"Navigation 1" = Source{[Name = "FABRIC_DEMO_DB", Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "GOLD", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "DIM_LOCATION", Kind = "Table"]}[Data]
in
  #"Navigation 3";
[DataDestinations = {[Definition = [Kind = "Reference", QueryName = "DIM_RAIN_CATEGORY_DataDestination", IsNewTarget = true], Settings = [Kind = "Automatic", TypeSettings = [Kind = "Table"]]]}]
shared DIM_RAIN_CATEGORY = let
  Source = Snowflake.Databases("ik75653.central-india.azure.snowflakecomputing.com", "COMPUTE_WH", [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null, Implementation = "2.0"]),
  #"Navigation 1" = Source{[Name = "FABRIC_DEMO_DB", Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "GOLD", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "DIM_RAIN_CATEGORY", Kind = "Table"]}[Data]
in
  #"Navigation 3";
[DataDestinations = {[Definition = [Kind = "Reference", QueryName = "DIM_TEMPERATURE_BAND_DataDestination", IsNewTarget = true], Settings = [Kind = "Automatic", TypeSettings = [Kind = "Table"]]]}]
shared DIM_TEMPERATURE_BAND = let
  Source = Snowflake.Databases("ik75653.central-india.azure.snowflakecomputing.com", "COMPUTE_WH", [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null, Implementation = "2.0"]),
  #"Navigation 1" = Source{[Name = "FABRIC_DEMO_DB", Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "GOLD", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "DIM_TEMPERATURE_BAND", Kind = "Table"]}[Data]
in
  #"Navigation 3";
[DataDestinations = {[Definition = [Kind = "Reference", QueryName = "DIM_WIND_DIRECTION_DataDestination", IsNewTarget = true], Settings = [Kind = "Automatic", TypeSettings = [Kind = "Table"]]]}]
shared DIM_WIND_DIRECTION = let
  Source = Snowflake.Databases("ik75653.central-india.azure.snowflakecomputing.com", "COMPUTE_WH", [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null, Implementation = "2.0"]),
  #"Navigation 1" = Source{[Name = "FABRIC_DEMO_DB", Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "GOLD", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "DIM_WIND_DIRECTION", Kind = "Table"]}[Data]
in
  #"Navigation 3";
[DataDestinations = {[Definition = [Kind = "Reference", QueryName = "FACT_DAILY_WEATHER_DataDestination", IsNewTarget = true], Settings = [Kind = "Automatic", TypeSettings = [Kind = "Table"]]]}]
shared FACT_DAILY_WEATHER = let
  Source = Snowflake.Databases("ik75653.central-india.azure.snowflakecomputing.com", "COMPUTE_WH", [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null, Implementation = "2.0"]),
  #"Navigation 1" = Source{[Name = "FABRIC_DEMO_DB", Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "GOLD", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "FACT_DAILY_WEATHER", Kind = "Table"]}[Data]
in
  #"Navigation 3";
[DataDestinations = {[Definition = [Kind = "Reference", QueryName = "FACT_LOCATION_SUMMARY_DataDestination", IsNewTarget = true], Settings = [Kind = "Automatic", TypeSettings = [Kind = "Table"]]]}]
shared FACT_LOCATION_SUMMARY = let
  Source = Snowflake.Databases("ik75653.central-india.azure.snowflakecomputing.com", "COMPUTE_WH", [Role = null, CreateNavigationProperties = null, ConnectionTimeout = null, CommandTimeout = null, Implementation = "2.0"]),
  #"Navigation 1" = Source{[Name = "FABRIC_DEMO_DB", Kind = "Database"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[Name = "GOLD", Kind = "Schema"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[Name = "FACT_LOCATION_SUMMARY", Kind = "Table"]}[Data]
in
  #"Navigation 3";
shared DIM_LOCATION_DataDestination = let
  Pattern = Lakehouse.Contents([CreateNavigationProperties = false, EnableFolding = false, HierarchicalNavigation = true, EnableVorder = true, OutputMetadataRefresh = true]),
  Navigation_1 = Pattern{[workspaceId = "2d53eebb-3a0f-4511-8c28-23a1ae71c035"]}[Data],
  Navigation_2 = Navigation_1{[lakehouseId = "20bb3788-1611-4e60-997f-cfd8eebd9d41"]}[Data],
  Navigation_3 = Navigation_2{[Id = "dbo", ItemKind = "Schema"]}[Data],
  TableNavigation = Navigation_3{[Id = "DIM_LOCATION", ItemKind = "Table"]}?[Data]?
in
  TableNavigation;
shared DIM_RAIN_CATEGORY_DataDestination = let
  Pattern = Lakehouse.Contents([CreateNavigationProperties = false, EnableFolding = false, HierarchicalNavigation = true, EnableVorder = true, OutputMetadataRefresh = true]),
  Navigation_1 = Pattern{[workspaceId = "2d53eebb-3a0f-4511-8c28-23a1ae71c035"]}[Data],
  Navigation_2 = Navigation_1{[lakehouseId = "20bb3788-1611-4e60-997f-cfd8eebd9d41"]}[Data],
  Navigation_3 = Navigation_2{[Id = "dbo", ItemKind = "Schema"]}[Data],
  TableNavigation = Navigation_3{[Id = "DIM_RAIN_CATEGORY", ItemKind = "Table"]}?[Data]?
in
  TableNavigation;
shared DIM_TEMPERATURE_BAND_DataDestination = let
  Pattern = Lakehouse.Contents([CreateNavigationProperties = false, EnableFolding = false, HierarchicalNavigation = true, EnableVorder = true, OutputMetadataRefresh = true]),
  Navigation_1 = Pattern{[workspaceId = "2d53eebb-3a0f-4511-8c28-23a1ae71c035"]}[Data],
  Navigation_2 = Navigation_1{[lakehouseId = "20bb3788-1611-4e60-997f-cfd8eebd9d41"]}[Data],
  Navigation_3 = Navigation_2{[Id = "dbo", ItemKind = "Schema"]}[Data],
  TableNavigation = Navigation_3{[Id = "DIM_TEMPERATURE_BAND", ItemKind = "Table"]}?[Data]?
in
  TableNavigation;
shared DIM_WIND_DIRECTION_DataDestination = let
  Pattern = Lakehouse.Contents([CreateNavigationProperties = false, EnableFolding = false, HierarchicalNavigation = true, EnableVorder = true, OutputMetadataRefresh = true]),
  Navigation_1 = Pattern{[workspaceId = "2d53eebb-3a0f-4511-8c28-23a1ae71c035"]}[Data],
  Navigation_2 = Navigation_1{[lakehouseId = "20bb3788-1611-4e60-997f-cfd8eebd9d41"]}[Data],
  Navigation_3 = Navigation_2{[Id = "dbo", ItemKind = "Schema"]}[Data],
  TableNavigation = Navigation_3{[Id = "DIM_WIND_DIRECTION", ItemKind = "Table"]}?[Data]?
in
  TableNavigation;
shared FACT_DAILY_WEATHER_DataDestination = let
  Pattern = Lakehouse.Contents([CreateNavigationProperties = false, EnableFolding = false, HierarchicalNavigation = true, EnableVorder = true, OutputMetadataRefresh = true]),
  Navigation_1 = Pattern{[workspaceId = "2d53eebb-3a0f-4511-8c28-23a1ae71c035"]}[Data],
  Navigation_2 = Navigation_1{[lakehouseId = "20bb3788-1611-4e60-997f-cfd8eebd9d41"]}[Data],
  Navigation_3 = Navigation_2{[Id = "dbo", ItemKind = "Schema"]}[Data],
  TableNavigation = Navigation_3{[Id = "FACT_DAILY_WEATHER", ItemKind = "Table"]}?[Data]?
in
  TableNavigation;
shared FACT_LOCATION_SUMMARY_DataDestination = let
  Pattern = Lakehouse.Contents([CreateNavigationProperties = false, EnableFolding = false, HierarchicalNavigation = true, EnableVorder = true, OutputMetadataRefresh = true]),
  Navigation_1 = Pattern{[workspaceId = "2d53eebb-3a0f-4511-8c28-23a1ae71c035"]}[Data],
  Navigation_2 = Navigation_1{[lakehouseId = "20bb3788-1611-4e60-997f-cfd8eebd9d41"]}[Data],
  Navigation_3 = Navigation_2{[Id = "dbo", ItemKind = "Schema"]}[Data],
  TableNavigation = Navigation_3{[Id = "FACT_LOCATION_SUMMARY", ItemKind = "Table"]}?[Data]?
in
  TableNavigation;
