provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "humangov_terraform_state" {
  bucket = "humangov-terraform-state"
  acl    = "private"

  lifecycle {
    prevent_destroy = true
  }
}

resource "aws_dynamodb_table" "terraform_lock_state" {
  name           = "humangov-terraform-state-lock-table"
  billing_mode   = "PROVISIONED"
  read_capacity  = 5
  write_capacity = 5
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }

  lifecycle {
    prevent_destroy = true
  }
}