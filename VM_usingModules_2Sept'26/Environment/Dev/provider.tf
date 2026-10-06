terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">5.0.0"
    }
  }

    backend "azurerm" {
      resource_group_name  = "b18"
      storage_account_name = "b18backend1234"
      container_name       = "g104"
      key                  = "terraform.tfstate"
    }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg1" {
  name = "test"
  location = "east us"

}
output "azurerm_resource_group" {
value = azurerm_resource_group.rg1.id  
}