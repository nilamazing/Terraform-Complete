# resource "azurerm_virtual_machine_extension" "weblinuxvm_custom_script" {
#   name="postInstallWebServerConfig"
#   virtual_machine_id = azurerm_virtual_machine.web_linuxvm.id
#   publisher = "Microsoft.Azure.Extensions"
#   type = "CustomScript"
#   type_handler_version = "2.0"

#   settings = <<SETTINGS
#     {
#         "commandToExecute": "sh 
#     }
# SETTINGS
# }