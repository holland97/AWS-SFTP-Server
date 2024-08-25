output "private_key_pem" {
  description = "Private key for sftp_user"
  value       = tls_private_key.private-key.private_key_pem
  sensitive   = true
}