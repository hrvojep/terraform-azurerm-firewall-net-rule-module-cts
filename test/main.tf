provider "azurerm" {
  features {}
}

module "terraform-azurerm-firewall-net-rule-module-cts" {
  source                = "../"
  services              = var.services
  azure_fw_name          = "testfirewall"
  resource_group_name    = "mainnetwork"
  rule_collection_name   = "az-fw-net-rc-dev-test"
  rule_priority          = "150"
  rule_action            = "Allow"

#   depends_on = [
#       azurerm_subnet.firewall
#   ]  
}


##delete from there
resource "azurerm_resource_group" "main" {
  name     = "mainnetwork-h"
  location = "eastus"
}

resource "azurerm_virtual_network" "hubnetwork" {
  name                = "hubnetwork"
  location            = azurerm_resource_group.main.location
  resource_group_name = azurerm_resource_group.main.name
  address_space       = ["10.2.0.0/16"]
}
resource "azurerm_subnet" "firewall" {
  name                 = "AzureFirewallSubnet"
  resource_group_name  = azurerm_resource_group.main.name
  virtual_network_name = azurerm_virtual_network.hubnetwork.name
  address_prefixes     = ["10.2.2.0/24"]
}

resource "azurerm_public_ip" "firewall" {
  name                = "testpip"
  location            = azurerm_resource_group.main.location
  resource_group_name = azurerm_resource_group.main.name
  allocation_method   = "Static"
  sku                 = "Standard"
}

resource "azurerm_firewall" "firewall" {
  name                = "testfirewall"
  location            = azurerm_resource_group.main.location
  resource_group_name = azurerm_resource_group.main.name
  sku_name            = "AZFW_VNet"
  sku_tier            = "Standard"

  ip_configuration {
    name                 = "configuration"
    subnet_id            = azurerm_subnet.firewall.id
    public_ip_address_id = azurerm_public_ip.firewall.id
  }
}
