output "virtual_network_name" {
  description = "Virtual Network Name"
  value = azurerm_virtual_network.vnet.name
}

output "virtual_network_id" {
  description = "Virtual Network Id"
  value = azurerm_virtual_network.vnet.id
}

output "snet_web_name" {
  description = "Web Subnet Name"
  value = azurerm_subnet.snet-web.name
}

output "snet_web_id" {
  description = "Web Subnet Id"
  value = azurerm_subnet.snet-web.id
}