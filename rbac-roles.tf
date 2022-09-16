# create custom role for resource lock management
resource "azurerm_role_definition" "sub-dev_resource-lock-management" {
  name               = "custom_sub-dev_resource-lock-management"
  scope              = data.azurerm_subscription.sub-dev.id

  permissions {
    actions     = ["Microsoft.Authorization/locks/*"]
    not_actions = []
  }

  assignable_scopes = [
    data.azurerm_subscription.sub-dev.id
  ]
}
