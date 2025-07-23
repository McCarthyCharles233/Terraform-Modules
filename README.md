# Terraform-Modules

A collection of reusable Terraform modules to help you provision and manage cloud infrastructure efficiently.

## Getting Started

Follow these steps to use a module from this repository:

1. **Clone the Repository**
    ```sh
    git clone https://github.com/McCarthyCharles233/Terraform-Modules.git
    cd Terraform-Modules
    ```

2. **Choose a Module**
    Browse the available modules in the repository and select the one you need.

3. **Use the Module in Your Terraform Configuration**
    Reference the module in your `.tf` file:
    ```hcl
    module "example" {
      source = "../Terraform-Modules/<module-name>"
      # Set required variables
    }
    ```

4. **Initialize Terraform**
    ```sh
    terraform init
    ```

5. **Plan and Apply**
    ```sh
    terraform plan
    terraform apply
    ```

## Requirements

- [Terraform](https://www.terraform.io/downloads.html) >= 1.0.0
- Appropriate cloud provider credentials

## Contributing

This repository is not open for contributions. It is intended solely for tracking my personal study and improvement in writing Terraform modules.

## License

This project is licensed under the MIT License.