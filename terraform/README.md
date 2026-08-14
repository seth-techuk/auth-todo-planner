Terraform S3 bucket module

This folder contains Terraform configuration to create a secure S3 bucket.

Usage:

1. Ensure AWS credentials are configured (environment variables, shared config, or IAM role).

2. Initialize Terraform:

```bash
terraform init
```

3. Plan and apply (replace `<unique-bucket-name>`):

```bash
terraform plan -var "bucket_name=<unique-bucket-name>"
terraform apply -var "bucket_name=<unique-bucket-name>"
```

Notes:
- The bucket is private, versioning enabled by default, and server-side encryption (AES256) is enabled.
- Set `force_destroy = true` to allow destroying a bucket that still contains objects.
