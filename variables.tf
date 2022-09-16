# Create Multiple Resource Groups

variable "resource_group_name" {
  description = "Default resource group name that the network will be created in."
  type        = list
  default     = ["VDC-Hub","VDC-Spoke1","VDC-Spoke2"]

}
variable "location" {
  description = "The location/region where the core network will be created."
  default     = "westus2"
}

# root mgmt group
data "azurerm_management_group" "mgt-root" {
  group_id = "mgt-root"
}

# SAP subscriptions
data "azurerm_management_group" "mgt-dev" {
  group_id = "mgt-dev"
}

# dev subscription
data "azurerm_subscription" "sub-dev" {
    subscription_id = "5acf4d6d-0629-4599-98be-3307f4197cf2"
}

# prod subscription
data "azurerm_subscription" "sub-prod" {
    subscription_id = "5acf4d6d-0629-4599-98be-3307f4197cf2"
}

