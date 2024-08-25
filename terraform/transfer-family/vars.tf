variable "transfer-identity-provider-type" {
  description = "Type of provider used for Transfer Family server"
  type        = string
  default     = "SERVICE_MANAGED"
}

variable "transfer-endpoint-type" {
  description = "Endpoint type used for Transfer Family server"
  type        = string
  default     = "PUBLIC"
}

variable "transfer-security-policy" {
  description = "Security policy for Transfer Family"
  type        = string
  default     = "TransferSecurityPolicy-2020-06"
}

variable "transfer-user-name" {
  description = "Name of user to access sftp server"
  type        = string
  default     = "viper"
}

variable "transfer-user-home-directory" {
  description = "Directory of User that sftp into server"
  type        = string
  default     = "/sftp-server-viper-project-bkt"
}

variable "policy-name" {
  description = "Name of policy that gives read/write permissions for S3 bkt"
  type        = string
  default     = "sftp_s3_rw_policy"
}

variable "role-name" {
  description = "Name of role"
  type        = string
  default     = "sftp_transfer_role"
}

variable "sftp-bucket-name" {
  description = "Name of SFTP Bucket that stores files/folders"
  type        = string
  default     = "sftp-server-viper-project-bkt"

}