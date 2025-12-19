terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.56.0"
    }
  }
}

provider "azurerm" {
  subscription_id = "a24be557-68c8-4061-8e03-00e95b3924da"
  features {}
}