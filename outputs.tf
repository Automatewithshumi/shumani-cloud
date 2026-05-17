output "public_ip" {
  value = azurerm_public_ip.public_ip.ip_address
}

output "website_url" {
  value = "http://${azurerm_public_ip.public_ip.ip_address}"
}

output "vm_name" {
  value = azurerm_linux_virtual_machine.vm.name
}