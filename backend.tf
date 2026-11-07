terraform {
  backend "s3" {
    bucket         = "wistech-prroject-terraform-statefile" #your s3 bucket name
    key            = "nest/ec2/terraform.tfstate"
    region         = "eu-north-1"
    dynamodb_table = "terraform-state-lock" # your dynamodb table name
    profile        = "wisdom"
  }
}