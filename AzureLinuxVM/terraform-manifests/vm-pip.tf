resource "azurerm_public_ip" "web_linuxvm_pip" {
  name = "${local.resource_group_prefix}-web-linuxvm-pip"
  resource_group_name = azurerm_resource_group.rg.name
  location = azurerm_resource_group.rg.location
  allocation_method = "Static"
  tags = local.common_tags
}