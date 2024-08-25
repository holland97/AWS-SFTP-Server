resource "aws_transfer_server" "SFTP-Server" {
  identity_provider_type = var.transfer-identity-provider-type
  endpoint_type          = var.transfer-endpoint-type
  protocols              = ["SFTP"]
  logging_role           = aws_iam_role.transfer_role.arn
  security_policy_name   = var.transfer-security-policy
  tags = {
    Name = "SFTP Server Project"
  }
}

# Since identity type = Service Managed, you must created users for server
resource "aws_transfer_user" "sftp_transfer_user" {
  server_id      = aws_transfer_server.SFTP-Server.id
  user_name      = var.transfer-user-name
  role           = aws_iam_role.transfer_role.arn
  home_directory = var.transfer-user-home-directory
}

# SSH Keys for SFTP Server User
resource "tls_private_key" "private-key" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_transfer_ssh_key" "user_ssh_key" {
  server_id = aws_transfer_server.SFTP-Server.id
  user_name = aws_transfer_user.sftp_transfer_user.user_name
  body      = trimspace(tls_private_key.private-key.public_key_openssh)
}
