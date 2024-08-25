terraform {
  backend "s3" {
    bucket = "Sftp-Server-State-Project-Backend"
    dynamodb_table = "Sftp-Server-Lock-DynamoDB-Table"
    key = "sftp/terraform/tfstate"
    encrypt = true
    region = "us-east-1"
  }
}