terraform {
  required_version = ">= 1.5"

  backend "azurerm" {
    resource_group_name  = "rg-AKS"
    storage_account_name = "aksstoragedemo321"
    container_name       = "tfakscontainer"
    key                  = "aks-terraform.tfstate"
  }
}