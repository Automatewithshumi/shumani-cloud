# Azure Terraform Portfolio VM

Simple Terraform configuration to deploy:
- Azure Resource Group
- Virtual Network and subnet
- Network Security Group with SSH and HTTP access
- Public IP and Network Interface
- Ubuntu Linux VM running Nginx
- A portfolio website served from the VM

## Files
- `providers.tf` - Azure provider configuration
- `variables.tf` - deployment variables, including GitHub username
- `main.tf` - primary infrastructure resources
- `outputs.tf` - deployment outputs like public IP and website URL
- `cloud-init.tpl` - VM startup script that installs Nginx and writes the website HTML

## Deploy
1. Open a terminal in `terraform-rg`
2. Authenticate to Azure
3. Run:
   ```bash
   terraform init
   terraform plan
   terraform apply -auto-approve
   ```

## Update the website
- Change `github_username` in `variables.tf` to your GitHub handle
- Re-run `terraform apply -auto-approve`

## Access the website
- After apply, Terraform outputs `website_url`
- Open that URL in your browser to see the deployed page

## Notes
- This is a simple demo deployment for learning Terraform and Azure.
- The VM uses a password-based admin login configured in `variables.tf`.
