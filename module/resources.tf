terraform {
  required_version = ">= 0.13"
}

provider "azurerm" {
  features {
  }
  tenant_id       = var.azure_tenant_id
  subscription_id = var.azure_subscription_id
  client_id       = var.azure_client_id
  client_secret   = var.azure_client_secret
}

data "azurerm_virtual_network" "VNET-Test" {
  name = var.virtual_network_name
  resource_group_name = var.resource_group_vnet_name
}

resource "azurerm_resource_group" "acr-pe" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_private_dns_zone" "acr_private_dns_zone" {
  name = var.privatednszone
  resource_group_name = azurerm_resource_group.acr-pe.name
}

# Create azure private dns zone virtual network link 

resource "azurerm_private_dns_zone_virtual_network_link" "acr_private_dns_zone_virtual_network_link" {
  name = var.private_link
  private_dns_zone_name = azurerm_private_dns_zone.acr_private_dns_zone.name
  resource_group_name = azurerm_resource_group.acr-pe.name
  virtual_network_id = data.azurerm_virtual_network.VNET-Test.id

}
