resource "azurerm_virtual_network" "vnet" {
  name = "${local.resource_group_prefix}-${var.vnet_name}"
  location = var.resource_group_location
  resource_group_name = azurerm_resource_group.rg.name
  address_space = var.vnet_address_space
  tags = local.common_tags
}