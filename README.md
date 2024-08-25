# AWS-SFTP-Server
In this project, I set up a secure SFTP server using AWS Transfer Family, which allows users to transfer files to and from an S3 bucket designated for their files and folders. I configured a separate S3 bucket to manage the Terraform state and a DynamoDB table for state locking to ensure consistent deployments. IAM policies were created to grant necessary read and write permissions to the S3 bucket, and a role was established for integration with AWS Transfer Family, ensuring proper access control and secure operation.
1. Create a IAM policy that gives read & write access to S3 bucket
2. Define IAM role for Transfer service
3. Attach policy to Transfer role
4. Create Transfer service with correct identity provider type, endpoint type, protocols, security role, and logging role
5. Generate user account with correct role and home directory
6. Generate SSH keys that the user can use to connect to the server
7.  Make S3 bucket with correct permissions that will store files & folders
