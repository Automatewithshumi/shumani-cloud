variable "resource_group_name" {
  default = "terraform-rg"
}

variable "location" {
  default = "South Africa North"
}

variable "admin_username" {
  default = "azureuser"
}

variable "admin_password" {
  default = "P@ssw0rd12345!"
}

variable "github_username" {
  description = "Your GitHub username for the portfolio page"
  default     = "YOUR-GITHUB-USERNAME"
}
