resource "azurerm_resource_group" "rg" {
  name="${local.resource_group_prefix}-${var.resource_group_name}-${random_string.randomstr.id}"
  location =  var.resource_group_location
  tags = local.common_tags
}