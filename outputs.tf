output "resource_group_name" {
  value = local.rg_raw
}

output "resource_group_name_optional_sub_id" {
  value = local.rg_sub_id
}

output "virtual_machine" {
  value = local.vm_raw
}

output "virtual_machine_optional_cluster" {
  value = local.vm_in_cluster
}

output "service_fabric" {
  value = local.service_fabric
}

output "virtual_network" {
  value = local.virtual_network
}

output "subnet" {
  value = local.subnet
}

output "route_table" {
  value = local.route_table_raw
}

output "route_table_optional_purpose" {
  value = local.route_table_purpose
}

output "nsg" {
  value = local.nsg_raw
}

output "nsg_optional_purpose" {
  value = local.nsg_purpose
}


output "nic_vm" {
  value = local.nic_vm_raw
}

output "nic_vm_in_cluster" {
  value = local.nic_vm_in_cluster
}

output "aks" {
  value = local.aks_raw
}

output "aks_optional_sub" {
  value = local.aks_sub
}

output "container_registry" {
  value = local.container_registry_raw
}

output "container_registry_optional_sub" {
  value = local.container_registry_sub
}


output "standard_storage" {
  value = local.std_storage_raw
}

output "standard_storage_optional_sub" {
  value = local.std_storage_sub
}

output "premium_storage" {
  value = local.premium_storage_raw
}

output "premium_storage_optional_sub" {
  value = local.premium_storage_sub
}

output "recovery_vault" {
  value = local.recover_vault_raw
}

output "recovery_vault_optional_sub" {
  value = local.recover_vault_sub
}

output "sql_paas_database" {
  value = local.sql_paas_raw
}

output "sql_paas_database_optional_sub" {
  value = local.sql_paas_sub
}


output "cosmos_db" {
  value = local.cosmos_raw
}

output "cosmos_db_optional_sub" {
  value = local.cosmos_sub
}

output "application_insights" {
  value = local.application_insights_raw
}

output "application_insights_optional_sub" {
  value = local.application_insights_sub
}


output "keyvault" {
  value = local.keyvault
}

output "azure_alert" {
  value = local.azure_alert
}


output "action_group" {
  value = local.action_group
}

output "action_group_short_name" {
  value = local.action_group_shortname
}

output "action_group_shortname_optional_env_id" {
  value = local.action_group_shortname_optional_env_id
}

output "action_group_shortname_optional_purpose" {
  value = local.action_group_shortname_optional_purpose
}

output "action_name" {
  value = local.action_name
}

output "aad_display_name" {
  value = local.aad_display_name
}

output "automation_account" {
  value = local.automation_account
}

output "automation_runbook" {
  value = local.automation_runbook
}

output "app_service" {
  value = local.app_service_raw
}

output "app_service_optional_sub" {
  value = local.app_service_sub
}

output "deployment_slot" {
  value = local.deployment_slot_raw
}

output "deployment_slot_optional_sub" {
  value = local.deployment_slot_sub
}


output "app_service_plan" {
  value = local.app_service_plan_raw
}

output "app_service_plan_optional_sub" {
  value = local.app_service_plan_sub
}


output "content_delivery_network" {
  value = local.content_delivery_network_raw
}

output "content_delivery_networkoptional_sub" {
  value = local.content_delivery_network_sub
}

output "azure_search" {
  value = local.azure_search
}

output "azure_search_index" {
  value = local.azure_search_index
}

output "azure_search_indexer" {
  value = local.azure_search_indexer
}

output "api_management" {
  value = local.api_management_raw
}

output "api_management_optional_sub" {
  value = local.api_management_sub
}

output "service_bus" {
  value = local.service_bus
}

output "service_bus_queue" {
  value = local.service_bus_queue
}

output "service_bus_topic" {
  value = local.service_bus_topic
}

output "service_bus_shared_access_policy" {
  value = local.service_bus_shared_access_policy
}


output "service_bus_queue_shared_access_policy" {
  value = local.service_bus_queue_shared_access_policy
}

output "service_bus_topic_shared_access_policy" {
  value = local.service_bus_topic_shared_access_policy
}

output "application_gateway" {
  value = local.application_gateway
}