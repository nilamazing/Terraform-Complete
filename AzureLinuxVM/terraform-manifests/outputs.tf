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

output "web_linuxvm_public_ip" {
  description = "Web Minux VM Public Address"
  value = azurerm_public_ip.web_linuxvm_pip.ip_address
}

output "web_linuxvm_pip_private_ip_address" {
  description = "Web Linux VM NIC Private IP Address"
  value = azurerm_network_interface.web_linuxvm_nic.private_ip_address
}
