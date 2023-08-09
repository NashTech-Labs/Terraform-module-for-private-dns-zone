variable "azure_tenant_id" {
 type = string
}
variable "azure_subscription_id" {
 type = string
}
variable "azure_client_id" {
 type = string
}
variable "azure_client_secret" {
 type = string
}

variable "privatednszone" {
 type = string
 default = "privatelink3.azurecr.io"
}
variable "resource_group_name" {
  description = "Name of the resource group to create the ACR in."
  type        = string
  default     = "acrendpont-rg"
}
variable "private_link" {
 type = string
 default = "privatelink3"
}

variable "location" {
  description = "Azure region where resources should be provisioned"
  type        = string
  default     = "UK South"
}
variable "virtual_network_name" {
 type = string
 default = "us-prov-central-us-internal-vnet"
}

variable "resource_group_vnet_name" {
 type = string
 default = "us-prov-central-us-internal-networks"
}

