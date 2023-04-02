terraform {
  backend "s3" {
    bucket = "terraform-backup-tfstate"
    key    = "terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "state-lock-dynamodb-table"
    encrypt = true
  }
}