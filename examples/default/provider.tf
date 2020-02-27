#Set the terraform backend
terraform {
  backend "local" {} #Using a local backend just for the demo, the reco is to use a remote backend, see : https://jamesdld.github.io/terraform/Best-Practice/BestPractice-1/
}

#Set the Provider
provider "azurerm" {
  client_id       = var.client_id
  client_secret   = var.client_secret
  subscription_id = var.subscription_id
  #subscription_id = "e469a261-e6fc-4363-94f1-3d8cdb259ec7"
  tenant_id = var.tenant_id
  version   = ">=1.36.0, < 2.0.0"
}
