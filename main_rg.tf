# Create resource group
resource "azurerm_resource_group" "resourcegroup" {
    count    = 3
    name     = element(var.resource_group_name, count.index)
    location = var.location

}
# Role Assignment (RBAC)

#Backend
terraform {
  backend "azurerm" {
    subscription_id      = "5acf4d6d-0629-4599-98be-3307f4197cf2"
    resource_group_name  = "VDC-Hub"
    storage_account_name = "vdchubiactfstate"
    container_name       = "VDC-Hub"
    key                  = "VDC-Hub.tfstate"
  }
}

