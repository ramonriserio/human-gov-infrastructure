terraform {
  required_providers {
    aws = {}
  }

  # Preparing for Teamwork
  backend "s3" {
    bucket         = "humangov-terraform-state"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "humangov-terraform-state-lock-table"
  }
}