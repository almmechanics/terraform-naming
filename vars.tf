variable "system_id" {
  type        = string
  description = "System ID"
}

variable "environment_id" {
  type        = string
  description = "Environment ID"
}

variable "optional_sub_id" {
  type        = string
  description = "Optional Sub ID"
}

variable "vm_operating_system" {
  type        = string
  description = "VM Operating System"
}

variable "vm_host_id" {
  type        = string
  description = "VM Host ID"
}

variable "cluster_id" {
  type        = string
  description = "Cluster ID"
}

variable "vnet_cidr" {
  type        = string
  description = "VNET CIDR Mask"
}

variable "purpose" {
  type        = string
  description = "Generic Purpose"
}

variable "nic_id" {
  type        = string
  description = "Nic ID"
}

variable "alert_resource" {
  type        = string
  description = "azure resource for alert"
}

variable "alert_trigger" {
  type        = string
  description = "trigger for azure alert"
}

variable "action" {
  type        = string
  description = "Azure Action"
}


variable "name" {
  type        = string
  description = "Azure Action name"
}


variable "service_bus_claim" {
  type        = string
  description = "Service Bus Claim"
}