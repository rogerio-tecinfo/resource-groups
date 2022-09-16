# assign reader role for team working on subscription sub-dev
resource "azurerm_role_assignment" "sub-dev-sg_az_sub-dev_reader_01" {
  scope                = data.azurerm_subscription.sub-dev.id
  role_definition_name = "Reader"
  principal_id       = data.azuread_group.sg_az_sub-dev_reader_01.id
}