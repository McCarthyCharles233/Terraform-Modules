# Remote Backend with S3

This secotion of the repo demonstrates how to configure a remote backend for Terraform state using Amazon S3.

## Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) installed
- AWS CLI configured with appropriate credentials

## Why Use a Remote Backend?

Storing Terraform state remotely enables collaboration, state locking, and recovery from local machine failures. S3 is a reliable, scalable storage solution, and DynamoDB provides state locking to prevent concurrent modifications.


## References

- [Terraform Backends Documentation](https://www.terraform.io/language/settings/backends/s3)
- [AWS S3 Documentation](https://docs.aws.amazon.com/s3/index.html)

---
