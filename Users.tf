# user1
data "azuread_user" "user1" {
  user_principal_name = "user1@tisolution.tech"
}

# service principal for pipeline
data "azuread_service_principal" "sp-cicd" {
  display_name = "sp-cicd"
}

# security group sg_az_sub-dev_reader_01
data "azuread_group" "sg_az_sub-dev_reader_01" {
  name = "sg_az_sub-dev_reader_01"
}

# security group sg_az_rg-sap-p-euwe-01_cont_01
data "azuread_group" "sg_az_rg-sap-p-euwe-01_cont_01" {
  name = "sg_az_rg-sap-p-euwe-01_cont_01"
}