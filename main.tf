terraform {
  backend "local" {}
}

locals {
  rg_raw    = format("%s%s_rg", var.system_id, var.environment_id)
  rg_sub_id = format("%s%s_rg_%s", var.system_id, var.environment_id, var.optional_sub_id)

  vm_raw        = format("%s%s%s%03s", var.system_id, var.environment_id, var.vm_operating_system, var.vm_host_id)
  vm_in_cluster = format("%s%s%s%03s%02s", var.system_id, var.environment_id, var.vm_operating_system, var.vm_host_id, var.cluster_id)

  service_fabric = format("%s%sfabric%03s", var.system_id, var.environment_id, var.cluster_id)

  virtual_network = format("netw%s_vnet_%s", var.environment_id, replace(var.vnet_cidr, "/", "_"))
  subnet          = format("%s%s_subnet", var.system_id, var.environment_id)

  route_table_raw     = format("route-%s%s", var.system_id, var.environment_id)
  route_table_purpose = format("route-%s%s%s", var.system_id, var.environment_id, var.purpose)

  nsg_raw     = format("%s%s_nsg", var.system_id, var.environment_id)
  nsg_purpose = format("%s%s_nsg_%s", var.system_id, var.environment_id, var.purpose)

  nic_vm_raw        = format("%s_nic%s", local.vm_raw, var.nic_id)
  nic_vm_in_cluster = format("%s_nic%s", local.vm_in_cluster, var.nic_id)

  aks_raw = format("%s%scluster", var.system_id, var.environment_id)
  aks_sub = format("%s%scluster%s", var.system_id, var.environment_id, var.optional_sub_id)

  container_registry_raw = format("%sregistry", var.system_id)
  container_registry_sub = format("%sregistry%s", var.system_id, var.optional_sub_id)

  std_storage_raw = format("%s%sstdstor", var.system_id, var.environment_id)
  std_storage_sub = format("%s%sstdstor%s", var.system_id, var.environment_id, var.optional_sub_id)

  premium_storage_raw = format("%s%spremstor", var.system_id, var.environment_id)
  premium_storage_sub = format("%s%spremstor%s", var.system_id, var.environment_id, var.optional_sub_id)

  recover_vault_raw = format("%s%srecvault", var.system_id, var.environment_id)
  recover_vault_sub = format("%s%srecvault%s", var.system_id, var.environment_id, var.optional_sub_id)

  sql_paas_raw = format("%s%ssqlsvr", var.system_id, var.environment_id)
  sql_paas_sub = format("%s%ssqlsvr%s", var.system_id, var.environment_id, var.optional_sub_id)

  cosmos_raw = format("%s%snosql", var.system_id, var.environment_id)
  cosmos_sub = format("%s%snosql%s", var.system_id, var.environment_id, var.optional_sub_id)

  application_insights_raw = format("%s%s%s-ai", var.system_id, var.environment_id, var.purpose)
  application_insights_sub = format("%s%s%s-ai%s", var.system_id, var.environment_id, var.purpose, var.optional_sub_id)

  keyvault = format("%s%s%s-kv", var.system_id, var.environment_id, var.purpose)

  azure_alert                             = format("%s%s_%s_%s", var.system_id, var.environment_id, var.alert_resource, var.alert_trigger)
  action_group                            = format("%s%s_%s", var.system_id, var.environment_id, var.purpose)
  action_group_shortname                  = var.system_id
  action_group_shortname_optional_env_id  = format("%s%s", var.system_id, var.environment_id)
  action_group_shortname_optional_purpose = substr(format("%s%s%s", var.system_id, var.environment_id, var.purpose), 0, 12)
  action_name                             = format("%s_%s", var.action, var.name)

  aad_display_name = format("aadapp_%s%s%s", var.system_id, var.environment_id, var.purpose)

  automation_account = format("auto%s", var.environment_id)
  automation_runbook = format("%s%s_runbook_%s", var.system_id, var.environment_id, formatdate("YYYYMMDDhmmss", timestamp()))

  app_service_raw = format("%s%s%s", var.system_id, var.environment_id, var.purpose)
  app_service_sub = format("%s%s%s%s", var.system_id, var.environment_id, var.purpose, var.optional_sub_id)

  deployment_slot_raw = var.purpose
  deployment_slot_sub = format("%s%02s", var.purpose, var.optional_sub_id)

  app_service_plan_raw = format("%s%s%splan", var.system_id, var.environment_id, var.purpose)
  app_service_plan_sub = format("%s%s%splan%s", var.system_id, var.environment_id, var.purpose, var.optional_sub_id)

  content_delivery_network_raw = format("%s%s%scdn", var.system_id, var.environment_id, var.purpose)
  content_delivery_network_sub = format("%s%s%scdn%s", var.system_id, var.environment_id, var.purpose, var.optional_sub_id)

  azure_search         = format("%s%s%s_srch", var.system_id, var.environment_id, var.purpose)
  azure_search_index   = format("%s%s%s_idx", var.system_id, var.environment_id, var.purpose)
  azure_search_indexer = format("%s%s%s_idxr", var.system_id, var.environment_id, var.purpose)


  api_management_raw = format("%s%sapim", var.system_id, var.environment_id)
  api_management_sub = format("%s%sapim%s", var.system_id, var.environment_id, var.optional_sub_id)

  service_bus                            = format("%s%s_sbn", var.system_id, var.environment_id)
  service_bus_queue                      = format("%s%s_sbq", var.system_id, var.environment_id)
  service_bus_topic                      = format("%s%s_sbt", var.system_id, var.environment_id)
  service_bus_shared_access_policy       = format("%s%s_sbn_%s_policy", var.system_id, var.environment_id, var.service_bus_claim)
  service_bus_queue_shared_access_policy = format("%s%s_sbq_%s_policy", var.system_id, var.environment_id, var.service_bus_claim)
  service_bus_topic_shared_access_policy = format("%s%s_sbt_%s_policy", var.system_id, var.environment_id, var.service_bus_claim)

  application_gateway = format("%s%sappgateway", var.system_id, var.environment_id)

}
