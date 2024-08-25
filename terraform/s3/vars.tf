variable "region" {
  description = "Region of Account"
  type        = string
  default     = "us-east-1"
}

variable "s3" {
  description = "Name of S3 bucket to be used as backend to store state"
  type        = string
  default     = "sftp-server-state-project-backend"

}

variable "dynamodbtable" {
  description = "Name of DynamoDB Table for locks"
  type        = string
  default     = "sftp-server-lock-project-dynamodb-table"
}

