# Terraform and Packer Project

## Overview

This project uses Terraform and Packer to deploy and configure infrastructure on AWS.

## AWS Resources Deployed

- Amazon EC2 Instances
- Amazon VPC
- Subnets
- Security Groups
- Load Balancer
- S3 Bucket

## Project Description

This project automates the deployment of infrastructure on AWS using Terraform and Packer. It provisions EC2 instances, sets up a VPC, defines subnets, configures security groups, and deploys a load balancer.
Nginx is installed on EC2 instances to serve a simple web page.

## Getting Started

### Prerequisites

- [Terraform](https://www.terraform.io/)
- [Packer](https://www.packer.io/)
- AWS Account and Credentials

### Installation

1. Clone the repository:

    ```bash
    git clone https://github.com/your-username/your-project.git
    cd your-project
    ```

2. Deploy infrastructure using Terraform:

    ```bash
    terraform init
    terraform plan
    terraform apply
    ```

## Usage

After deploying the infrastructure, you can access the Nginx web page through the Application Load Balancer's DNS name.

```plaintext
http://your-load-balancer-dns-name
```

## Clean Up

To destroy the created resources and avoid incurring charges, run:

```bash
terraform destroy
```

## Feedback and Contributions

I welcome feedback, suggestions, and contributions. If you encounter issues or have ideas for improvements, please open an issue or submit a pull request.

## License

This project is licensed under the [MIT License](LICENSE). See the [LICENSE](LICENSE) file for details.

Thank you for exploring my resume webpage project! If you have any questions, feel free to reach out.

---
