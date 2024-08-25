resource "aws_s3_bucket" "devs3bucket" {
  bucket = var.sftp-bucket-name
  tags = {
    Name        = "SFTP Server Project Bucket"
    Environment = "Project"
  }
}

