resource "azurerm_virtual_machine" "web_linuxvm" {
  name                = "${local.resource_group_prefix}-web-linuxvm"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  vm_size             = "Standard_DS1_v2"
  network_interface_ids = [azurerm_network_interface.web_linuxvm_nic.id]

  storage_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "16.04-LTS"
    version   = "latest"
  }

  storage_os_disk {
    name              = "myosdisk1"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }

  os_profile {
    computer_name = "weblinuxvm1"
    admin_username = "nilamazing"
    custom_data = file("${path.module}/Utilities/webvm-script.sh")
  }
  
  os_profile_linux_config {
    disable_password_authentication = true
    ssh_keys {
      path = format("/home/nilamazing/.ssh/authorized_keys")
      key_data = file("${path.module}/ssh-keys/tf-azure.pem.pub")
    }
  }

}
