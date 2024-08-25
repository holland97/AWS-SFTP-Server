# AWS-SFTP-Server
1. Create a IAM policy that gives read & write access to S3 bucket
2. Define IAM role for Transfer service
3. Attach policy to Transfer role
4. Create Transfer service with correct identity provider type, endpoint type, protocols, security role, and logging role
5. Generate user account with correct role and home directory
6. Generate SSH keys that the user can use to connect to the server
7.  Make S3 bucket with correct permissions that will store files & folders
