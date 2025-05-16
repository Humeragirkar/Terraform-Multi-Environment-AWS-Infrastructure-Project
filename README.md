# Terraform-Multi-Environment-AWS-Infrastructure-Project

This repository contains Terraform code to provision a scalable and modular AWS infrastructure. 
It includes EC2 instances, S3 buckets, DynamoDB tables, VPC networking, and IAM resources suitable for development and production environments.

---

## 📦 Features

- ✅ EC2 instance provisioning with SSH key pair
- 📁 S3 bucket for object storage
- 🧮 DynamoDB for state locking or application use
- 🔐 IAM key pair for SSH access
- 🌐 Default VPC and security groups
- 🔁 Modular file structure for better manageability

---
## 1. Initialize Terraform
terraform init

## 2. Validate the configuration
terraform validate

## 3. Plan the infrastructure
terraform plan

## 4. Apply the changes
terraform apply

## 5. Clean Up – Destroying the Resources
To tear down the infrastructure and avoid unwanted AWS charges:
terraform destroy

