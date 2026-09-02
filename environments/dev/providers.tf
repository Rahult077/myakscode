terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 5.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "QA"
    storage_account_name = "mystateaks123456"
    container_name       = "tfstate"
    key                  = "myaks-dev.tfstate"
  }
}

provider "azurerm" {
  features {}
}
