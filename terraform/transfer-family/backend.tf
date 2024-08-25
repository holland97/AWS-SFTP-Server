terraform {
  backend "s3" {
    bucket = "sftp-server-state-project-backend"
    dynamodb_table = "sftp-server-lock-dynamodb-table"
    key = "sftp/terraform/tfstate"
    encrypt = true
    region = "us-east-1"
  }
}