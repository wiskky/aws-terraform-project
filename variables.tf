# Provider configuration
variable "region" {
  description = "AWS region"
  type        = string
}

variable "project_name" {
  description = "Project name"
  type        = string
}

variable "environment" {
  description = "Environment (dev, staging, prod)"
  type        = string
}

# Project directory configuration
variable "project_directory" {
  description = "Project directory name"
  type        = string
}


# VPC and subnets configuration.
variable "vpc_cidr" {
  description = "VPC CIDR block"
  type        = string
}

variable "public_subnet_az1_cidr" {
  description = "Public subnet AZ1 CIDR"
  type        = string
}

variable "public_subnet_az2_cidr" {
  description = "Public subnet AZ2 CIDR"
  type        = string
}

variable "private_app_subnet_az1_cidr" {
  description = "Private app subnet AZ1 CIDR"
  type        = string
}

variable "private_app_subnet_az2_cidr" {
  description = "Private app subnet AZ2 CIDR"
  type        = string
}

variable "private_data_subnet_az1_cidr" {
  description = "Private data subnet AZ1 CIDR"
  type        = string
}

variable "private_data_subnet_az2_cidr" {
  description = "Private data subnet AZ2 CIDR"
  type        = string
}

# Secret Manager
variable "secret_name" {
  description = "Secrets Manager secret name"
  type        = string
}

# RDS
variable "multi_az_deployment" {
  description = "Enable Multi-AZ deployment"
  type        = bool
}

variable "database_instance_identifier" {
  description = "RDS instance identifier"
  type        = string
}

variable "database_instance_class" {
  description = "RDS instance class (e.g., db.t3.micro)"
  type        = string
}

variable "database_engine" {
  description = "Database engine (mysql, postgres, mariadb)"
  type        = string
}

variable "database_engine_version" {
  description = "Database engine version (e.g., 8.0.39)"
  type        = string
}

variable "publicly_accessible" {
  description = "Make RDS publicly accessible"
  type        = bool
}
