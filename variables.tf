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

