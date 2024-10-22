---
title: bolt.Oscar-aws
emoji: 🦀
colorFrom: green
colorTo: blue
sdk: streamlit
sdk_version: 1.39.0
app_file: app.py
pinned: false
license: mit
---

<p align="center">
  <img src="docs/bolt.Oscar.png" width="100%">
  <h1 align="center">🌟 bolt.Oscar-aws 🌟</h1>
</p>
<p align="center">
  <a href="https://github.com/Sunwood-ai-labs/bolt.Oscar-aws">
    <img alt="GitHub Repo" src="https://img.shields.io/badge/github-HarmonAI__III-blue?logo=github">
  </a>
  <a href="https://github.com/Sunwood-ai-labs/bolt.Oscar-aws/blob/main/LICENSE">
    <img alt="License" src="https://img.shields.io/github/license/Sunwood-ai-labs/bolt.Oscar-aws?color=green">
  </a>
  <a href="https://github.com/Sunwood-ai-labs/bolt.Oscar-aws/stargazers">
    <img alt="GitHub stars" src="https://img.shields.io/github/stars/Sunwood-ai-labs/bolt.Oscar-aws?style=social">
  </a>
  <a href="https://github.com/Sunwood-ai-labs/bolt.Oscar-aws/releases">
    <img alt="GitHub release" src="https://img.shields.io/github/v/release/Sunwood-ai-labs/bolt.Oscar-aws?include_prereleases&style=flat-square">
  </a>
  <a href="https://github.com/Sunwood-ai-labs/bolt.Oscar-aws/issues">
    <img alt="GitHub issues" src="https://img.shields.io/github/issues/Sunwood-ai-labs/bolt.Oscar-aws">
  </a>
  <a href="https://github.com/Sunwood-ai-labs/bolt.Oscar-aws/pulls">
    <img alt="PRs Welcome" src="https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=flat-square">
  </a>
  <a href="https://github.com/Sunwood-ai-labs/bolt.Oscar-aws/network/members">
    <img alt="GitHub forks" src="https://img.shields.io/github/forks/Sunwood-ai-labs/bolt.Oscar-aws?style=social">
  </a>
  <a href="https://github.com/Sunwood-ai-labs/bolt.Oscar-aws/watchers">
    <img alt="GitHub watchers" src="https://img.shields.io/github/watchers/Sunwood-ai-labs/bolt.Oscar-aws?style=social">
  </a>
  <img alt="GitHub last commit" src="https://img.shields.io/github/last-commit/Sunwood-ai-labs/bolt.Oscar-aws">
  <img alt="GitHub top language" src="https://img.shields.io/github/languages/top/Sunwood-ai-labs/bolt.Oscar-aws">
</p>
<h2 align="center">
  ～ Bolt.new AWS Deployment Automation Template ～

<a href="https://github.com/Sunwood-ai-labs/bolt.Oscar-aws/blob/main/README.md"><img src="https://img.shields.io/badge/ドキュメント-日本語-white.svg" alt="JA doc"/></a>
<a href="https://github.com/Sunwood-ai-labs/bolt.Oscar-aws/blob/main/docs/README.en.md"><img src="https://img.shields.io/badge/english-document-white.svg" alt="EN doc"></a>
</h2>
<p align="center">
  <img src="https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python" alt="Python">
  <img src="https://img.shields.io/badge/AWS-232F3E?style=for-the-badge&logo=amazon-aws" alt="AWS">
  <img src="https://img.shields.io/badge/Terraform-7B42BC?style=for-the-badge&logo=terraform" alt="Terraform">
  <img src="https://img.shields.io/badge/Docker-2496ED?style=for-the-badge&logo=docker" alt="Docker">
  <img src="https://img.shields.io/badge/GitHub-181717?style=for-the-badge&logo=github" alt="GitHub">
  <img src="https://img.shields.io/badge/Actions-2088FF?style=for-the-badge&logo=github-actions" alt="GitHub Actions">
  <img src="https://img.shields.io/badge/Streamlit-FF4B4B?style=for-the-badge&logo=streamlit" alt="Streamlit">
</p>

> [!IMPORTANT]
>  bolt.Oscar was developed using [cline (formerly Claude Dev)](https://github.com/clinebot/cline), [SourceSage](https://github.com/Sunwood-ai-labs/SourceSage), and [claude.ai](https://claude.ai/).  A significant portion of the release notes, README, and commit messages were generated using the latest AI technologies.

## 🚀 Project Overview

bolt.Oscar-aws is an infrastructure automation template for rapidly deploying the AI-driven development environment Bolt.new on AWS. This repository provides the following features:

1. **Automated deployment using AWS ECS Fargate**
2. **Fully code-defined infrastructure using Terraform**
3. **Secure network configuration and load balancing**
4. **Auto-scaling and monitoring**

## 🆕 Latest News

- 🎉 **v1.3.0 released**:
  - Automated AWS ECS Fargate deployment
  - Improved Terraform modules
  - Optimized security groups and network settings
  - Added CloudWatch logging

## ✨ Key Features

1. **Infrastructure Automation**:
   - Automated provisioning of AWS resources using Terraform
   - Containerized application operation with ECS Fargate
   - Load balancing with Application Load Balancer

2. **Security Measures**:
   - Proper design of VPC and subnets
   - Access control using security groups
   - Implementation of the principle of least privilege for IAM roles and policies

3. **Monitoring and Operation**:
   - Log management with CloudWatch
   - Alert and metric configuration
   - Auto-scaling functionality

## 🔧 How to Use

### Prerequisites
- AWS CLI installed and configured
- Terraform installed
- Docker environment prepared

### Deployment Steps

1. Clone the repository:
```bash
git clone https://github.com/Sunwood-ai-labs/bolt.Oscar-aws
cd bolt.Oscar-aws
```

2. Initialize Terraform:
```bash
cd Terraform
terraform init
```

3. Review the configuration:
```bash
terraform plan
```

4. Execute the deployment:
```bash
terraform apply
```

## 📦 Directory Structure

```plaintext
├─ Terraform/
│  ├─ main.tf          # Main Terraform configuration
│  ├─ outputs.tf       # Output value definitions
│  ├─ terraform.tfvars # Variable value settings
│  ├─ variables.tf     # Variable definitions
│  ├─ whitelist.csv    # IP whitelist
├─ app.py              # Streamlit application
├─ README.md
├─ requirements.txt
```

## 🌿 Configuration Customization

### Example `terraform.tfvars` Configuration:
```hcl
aws_region      = "ap-northeast-1"
project_name    = "bolt-oscar-app"
vpc_cidr        = "10.0.0.0/16"
container_image = "your-docker-image:latest"
task_cpu        = "256"
task_memory     = "512"
app_count       = 1
```

### IP Whitelist Configuration:
You can manage the IP addresses allowed access by editing `whitelist.csv`.

## 🐈 Architecture

```mermaid
graph TB
    A[Internet] --> B[Application Load Balancer]
    B --> C[ECS Fargate Service]
    C --> D[Task Definition]
    D --> E[Container]
    E --> F[Streamlit App]
    
    subgraph VPC
    B
    C
    D
    E
    F
    end
```

## 🤝 Contribution

1. Fork this repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Create a pull request

## 📄 License

bolt.Oscar-aws is released under the [MIT License](LICENSE).

## 🙏 Acknowledgements

- Thanks to the [Bolt.new](https://github.com/stackblitz/bolt.new) team
- Inspiration for Terraform module development was drawn from the AWS community

---

Achieve rapid AWS deployment of Bolt.new with bolt.Oscar-aws!
```