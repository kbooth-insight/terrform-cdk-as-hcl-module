

# provider "azurerm" {
#     features {}
# }


module "cdktf_example" {
    source = "./modules/copied-via-instructions-module"

    zip_code = var.zip_code
}

variable "zip_code" {
}

output "full_circle" {
    value = module.cdktf_example
}