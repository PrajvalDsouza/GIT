# module "rg_module" {
#     source = "../../modules/azurerm_resource"
#   rg_name= var.rg_name
# }

# module "vnet_module" {
#     source = "../../modules/azurerm_vnet"
#   rg_name= var.rg_name
#   depends_on = [ module.rg_module]
# }

