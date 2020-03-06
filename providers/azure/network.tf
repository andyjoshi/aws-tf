resource "azurerm_virtual_network" "network-rg" {
  name     = "tfvnet"
  address_space = ["10.0.0.0/16"]
  location = "eastus"
  resource_group_name = "TFResourceGroup"

  tags ={
    environment = "Terraform Vnet"
  }

}


# Subnet for the Virtual Machines
resource "azurerm_subnet" "tfsubnet" {
  name                 = "tfSubnet"
  resource_group_name  = "TFResourceGroup"
  virtual_network_name = "TFNet"
  address_prefix       = "10.0.2.0/24"
}

