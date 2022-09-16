# Azure Resource Manager
provider "azurerm" {
  features {}
  subscription_id = "5acf4d6d-0629-4599-98be-3307f4197cf2"
  tenant_id       = "53859719-3e1d-484f-b374-75e205187a6c"
}

# Azure AD
provider "azuread" {
}