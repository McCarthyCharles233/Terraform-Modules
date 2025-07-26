# AWS EC2 Workspaces Terraform Module

This module demonstrates how to use [Terraform Workspaces](https://developer.hashicorp.com/terraform/language/state/workspaces) to manage AWS EC2 resources across multiple environments (e.g., `dev`, `staging`, `prod`). By leveraging workspaces, you can deploy the same infrastructure configuration to different stages, isolating state and resources per environment.

## Table of Contents

- [Overview](#overview)
- [Prerequisites](#prerequisites)
- [Workspace Commands](#workspace-commands)
- [Usage](#usage)
- [Example](#example)
- [Cleanup](#cleanup)
- [References](#references)

## Overview

Terraform workspaces allow you to maintain separate state files for each environment. This enables you to use the same codebase to provision resources in different stages without resource conflicts.

## Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) installed
- AWS credentials configured (e.g., via environment variables or AWS CLI)
- Initialized Terraform project

## Workspace Commands

### List Workspaces

```sh
terraform workspace list
```

### Create a Workspace

```sh
terraform workspace new <workspace_name>
```
Example:
```sh
terraform workspace new dev
```

### Select a Workspace

```sh
terraform workspace select <workspace_name>
```
Example:
```sh
terraform workspace select prod
```

### Show Current Workspace

```sh
terraform workspace show
```

## Usage

1. **Initialize Terraform:**
    ```sh
    terraform init
    ```

2. **Create or Select Workspace:**
    ```sh
    terraform workspace new dev
    terraform workspace select dev
    ```

3. **Apply Configuration:**
    ```sh
    terraform apply
    ```

4. **Repeat for Other Environments:**
    ```sh
    terraform workspace new staging
    terraform workspace select staging
    terraform apply
    ```

## Example

Suppose your `main.tf` provisions an EC2 instance. By switching workspaces, you can deploy separate EC2 instances for `dev`, `staging`, and `prod`, each managed independently.

```hcl
resource "aws_instance" "example" {
  ami           = var.ami_id
  instance_type = var.instance_type
  tags = {
    Name = "ec2-${terraform.workspace}"
  }
}
```

## Cleanup

To destroy resources in a specific workspace:

```sh
terraform workspace select <workspace_name>
terraform destroy
```

## References

- [Terraform Workspaces Documentation](https://developer.hashicorp.com/terraform/language/state/workspaces)
- [Terraform AWS Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs)

---

**Note:** Always verify which workspace is active before running `terraform apply` or `terraform destroy` to avoid unintended changes.