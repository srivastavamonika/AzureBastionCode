terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.45.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "B17_rg"
    storage_account_name = "b17storemycontainer"
    container_name       = "testtfstate"
    key                  = "terraform.tfstate"

  }
}

provider "azurerm" {
  features {
  }
  subscription_id = "418b0f60-e8d3-4b5e-af5d-2f7154274590"

}