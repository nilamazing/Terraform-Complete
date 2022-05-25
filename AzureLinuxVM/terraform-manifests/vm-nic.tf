resource "azurerm_network_interface" "web_linuxvm_nic" {
  name = "${local.resource_group_prefix}-web-linuxvm-nic"
  resource_group_name = azurerm_resource_group.rg.name
  location = azurerm_resource_group.rg.location

  ip_configuration {
    name="web-linuxvm-ip-1"
    subnet_id = azurerm_subnet.snet-web.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id = azurerm_public_ip.web_linuxvm_pip.id
  }
}