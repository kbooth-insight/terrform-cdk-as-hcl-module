

# provider "azurerm" {
#     features {}
# }


module "cdktf_example" {
    source = "./modules/copied-via-instructions-module"

    zip_code_var = var.zip_code
}

variable "zip_code" {
    default = "43201"
}

output "full_circle" {
    value = module.cdktf_example
}