terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.56.0"
    }
  }
}

provider "azurerm" {
  subscription_id = "762b3486-079b-43e4-bcec-90f087ae5476"
  features {}
}
