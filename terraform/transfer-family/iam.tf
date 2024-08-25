# Create IAM policy that grants read & write access to S3 bucket for Transfer Family
resource "aws_iam_policy" "s3_rw_policy" {
  name = var.policy-name

  policy = <<EOF
{
  "Version": "2012-10-17",
   "Statement": [
      {
        "Effect": "Allow",
         "Action": [
            "s3:ListBucket",
            "s3:GetObject",
            "s3:PutObject",
            "s3:DeleteObject"
          ],
          "Resource": [
            "arn:aws:s3:::sftp-server-viper-project-bkt",
            "arn:aws:s3:::sftp-server-viper-project-bkt/*"
          ]
        }
      ]
    }
    EOF
}

# Define role for Transfer Family
resource "aws_iam_role" "transfer_role" {
  name = var.role-name

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "transfer.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
EOF
}

# Attaches role to service 
resource "aws_iam_role_policy_attachment" "transfer_role_policy_attachment" {
  role       = aws_iam_role.transfer_role.name
  policy_arn = aws_iam_policy.s3_rw_policy.arn

}

