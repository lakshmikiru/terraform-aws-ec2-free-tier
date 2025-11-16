# Terraform AWS EC2 Free Tier Project

This project provisions an Amazon EC2 instance running Amazon Linux that is eligible for the AWS Free Tier. It is designed to help you quickly set up an EC2 instance with minimal configuration.

## Project Structure

```
terraform-aws-ec2-free-tier
├── main.tf                # Main Terraform configuration
├── provider.tf            # AWS provider configuration
├── variables.tf           # Input variables for the configuration
├── outputs.tf             # Output values after execution
├── versions.tf            # Required Terraform and provider versions
├── modules
│   └── ec2
│       ├── main.tf        # EC2 module configuration
│       ├── variables.tf   # Input variables for the EC2 module
│       └── outputs.tf     # Output values for the EC2 module
├── environments
│   └── dev
│       └── terraform.tfvars # Environment-specific variable values
├── scripts
│   └── user_data.sh       # User data script for EC2 instance
├── .gitignore              # Files to ignore in Git
└── README.md               # Project documentation
```

## Getting Started

1. **Prerequisites**
   - Ensure you have [Terraform](https://www.terraform.io/downloads.html) installed.
   - Configure your AWS credentials using the AWS CLI or environment variables.

2. **Clone the Repository**
   ```bash
   git clone <repository-url>
   cd terraform-aws-ec2-free-tier
   ```

3. **Initialize Terraform**
   Run the following command to initialize the Terraform project:
   ```bash
   terraform init
   ```

4. **Configure Variables**
   Update the `environments/dev/terraform.tfvars` file with your desired variable values.

5. **Plan the Deployment**
   Generate an execution plan:
   ```bash
   terraform plan
   ```

6. **Apply the Configuration**
   Deploy the EC2 instance:
   ```bash
   terraform apply
   ```

7. **Access the EC2 Instance**
   After the instance is created, you can access it using the public IP address outputted by Terraform.

## Cleanup

To remove the resources created by Terraform, run:
```bash
terraform destroy
```

## License

This project is licensed under the MIT License. See the LICENSE file for details.