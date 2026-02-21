# terraform-aws-practice
# Terraform AWS Infrastructure - Vehicle Service Center

Infrastructure as Code (IaC) configuration for deploying the Vehicle Service 
Center application on AWS using Terraform.

## Architecture

This Terraform configuration creates:
- EC2 instance (t3.micro) for backend server with Nginx
- S3 bucket configured for static website hosting
- Security Group (SSH from your IP, HTTP/HTTPS from anywhere)
- All resources properly tagged for management

## Prerequisites

- Terraform >= 1.0
- AWS CLI configured with credentials
- Your public IP address

## Quick Start
```bash
# Clone repository
git clone https://github.com/sahan201/terraform-aws-practice.git
cd terraform-aws-practice

# Initialize Terraform
terraform init

# Preview changes
terraform plan -var="my_ip=YOUR_IP/32"

# Apply configuration
terraform apply -var="my_ip=YOUR_IP/32"

# Destroy resources (when done testing)
terraform destroy -var="my_ip=YOUR_IP/32"
```

## Configuration

Modify `variables.tf` to customize:
- AWS region
- Instance type
- Project name
- Environment

## Outputs

After applying, Terraform will output:
- Backend EC2 public IP
- S3 bucket name
- S3 website endpoint
- SSH command to connect

## Project Structure
```
.
├── main.tf          # Main infrastructure definitions
├── variables.tf     # Input variables
├── outputs.tf       # Output values
├── README.md        # This file
└── .gitignore       # Git ignore file
```

## Learning Objectives

This project demonstrates:
- ✅ Infrastructure as Code principles
- ✅ AWS resource provisioning
- ✅ Security group configuration
- ✅ S3 static website hosting
- ✅ Terraform state management
- ✅ Variable usage for flexibility

## Cost Optimization

All resources use AWS Free Tier:
- t3.micro instance (750 hours/month free)
- S3 storage (5GB free)

Remember to destroy resources after testing to avoid charges.

## Next Steps

- [ ] Add CloudFront distribution
- [ ] Add Route53 DNS configuration
- [ ] Add RDS database
- [ ] Implement remote state with S3
- [ ] Create modules for reusability

## Author

Sahan Samidhu Saluwadana
- LinkedIn: [Your LinkedIn]
- GitHub: [Your GitHub]
- Email: shansamidhu@gmail.com
```

---

#### **Step 6: Create .gitignore (5 min)**

**Create:** `.gitignore`
```
# Terraform files
.terraform/
*.tfstate
*.tfstate.*
.terraform.lock.hcl
crash.log

# Sensitive files
terraform.tfvars
*.pem
.env

# OS files
.DS_Store
Thumbs.db
>>>>>>> c6cb365 (initial terraform infrastructure configs)
