resource "azurerm_subnet" "snet-web" {
  name = "${azurerm_virtual_network}-${var.snet_web}"
  resource_group_name = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes = var.snet_web_address_space
}

resource "azurerm_network_security_group" "snet-web-nsg" {
  name = "${azurerm_subnet.snet-web.name}-nsg"
  location = var.resource_group_location
  resource_group_name = azurerm_resource_group.rg.name

}

resource "azurerm_subnet_network_security_group_association" "snet-web-nsg-assoc" {
   depends_on = [
    azurerm_network_security_rule.snet-web-nsg-rule-inbound ## Every NSG Rule Association will disassociate NSG from Subnet and Associate it, so we associate it only after NSG is completely created - Azure Provider Bug https://github.com/terraform-providers/terraform-provider-azurerm/issues/354
  ]
  subnet_id = azurerm_subnet.snet-web.id
  network_security_group_id = azurerm_network_security_group.snet-web-nsg.id
}

locals {
  web_inbound_ports_map={
       "100":"80",
       "110":"443",
       "120":"22"
  }
}

resource "azurerm_network_security_rule" "snet-web-nsg-rule-inbound" {
  for_each                    = local.web_inbound_ports_map
  name                        = "Rule-Port-${each.value}"
  priority                    = each.key
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = each.value
  source_address_prefix       = "*"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.rg.name
  network_security_group_name = azurerm_network_security_group.snet-web-nsg.name
  
}