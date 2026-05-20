🚨 Solving Application Downtime and Performance Degradation During Traffic Spikes Using Azure High Availability Architecture

# Azure Terraform Portfolio – High Availability Web Infrastructure

This project demonstrates a real-world Azure cloud deployment using Terraform (Infrastructure as Code). It provisions a scalable web environment with load balancing and two Linux VMs running Nginx.

---

## 🏗️ Architecture

User  
↓  
Azure Load Balancer (http://4.253.95.201)  
↓

Backend Pool

- VM1 (Nginx Web App)
- VM2 (Nginx Web App)

---

## 📦 Infrastructure Components

- Azure Resource Group
- Virtual Network (VNet) + Subnet
- Network Security Group (NSG)
  - Inbound rules: SSH (22), HTTP (80)
- Public IP (Load Balancer)
- 2× Ubuntu Linux Virtual Machines
- Nginx web servers on both VMs
- Azure Load Balancer (Standard SKU)
- Backend Pool (VM1 + VM2)
- Health Probe (HTTP on port 80)
- Load Balancing Rule

---

## 🚀 How to Run Full Deployment

1. Clone repository

```bash
git clone https://github.com/Automatewithshumi/shumani-cloud.git
cd azure-terraform-vm


Login to Azure
az login
Initialize Terraform
terraform init
Validate configuration
terraform validate
Review deployment plan
terraform plan
Deploy infrastructure
terraform apply -auto-approve
🌐 Access Application

HTTP:

http://4.253.95.201

SSH:

ssh azureuser@4.168.225.59

Refresh page to see traffic switching between VM1 and VM2.

⚡ Cost Optimization (IMPORTANT)

To reduce cloud costs during development and testing, automatic shutdown has been enabled on the Azure Virtual Machines.

This ensures resources are not running 24/7 unnecessarily, helping to minimize Azure charges.

👉 In a production environment, this would be disabled, and the infrastructure would run 24/7 with high availability and monitoring enabled.

🧠 Key Features
Infrastructure as Code (Terraform)
Cloud networking (VNet, Subnet, NSG)
Load balancing (active-active setup)
Linux VM provisioning
Nginx web servers
High availability architecture
Cost optimization via auto shutdown

⚠️ Important Notes
Public IP is temporary (Azure Free Tier limitation)
Infrastructure can be recreated anytime via Terraform
SSH uses port 22
Web traffic uses port 80
Designed for learning and portfolio use

💡 Challenges & Solutions
1. Public IP limit reached

Solved by using only Load Balancer IP

2. VM SKU unavailable

Fixed by switching to supported size (Standard_DS1_v2)

3. SSH timeout issues

Resolved using NSG inbound rule for port 22

4. Nginx not accessible

Fixed by opening port 80 and verifying service

5. Terraform pipeline failure

Fixed by replacing local SSH key path with variable input

6. Load Balancer setup confusion

Resolved by properly configuring:

Backend pool
Health probe
Load balancing rule
📈 Future Improvements
Add HTTPS (SSL/TLS)
Custom domain name
Azure Application Gateway integration
Auto-scaling VM Scale Sets
Monitoring with Azure Monitor
👨‍💻 Author

Shumani Phaswana
Cloud & QA Engineer | Terraform | Azure | DevOps Learner

```
