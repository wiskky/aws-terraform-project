# NOTE: Secret manager has been created manually in the console and we are trying to retrieve that secret

# Database credentials from Secrets Manager
data "aws_secretsmanager_secret_version" "secrets" {
  secret_id = var.secret_name
}

# Parse secret JSON for easier reference (to get username, pwd, db-name etc)
locals {
  secrets = jsondecode(data.aws_secretsmanager_secret_version.secrets.secret_string)
}
