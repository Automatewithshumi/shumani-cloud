variable "resource_group_name" {
  default = "terraform-vm-rg"
}

variable "location" {
  default = "South Africa North"
}

variable "vm_admin_username" {
  default = "azureuser"
}

variable "public_ssh_key" {
  description = "SSH Public Key"
  type        = string
}

