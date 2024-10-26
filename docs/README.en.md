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
>  bolt.Oscar is developed using [cline (formerly Claude Dev)](https://github.com/clinebot/cline), [SourceSage](https://github.com/Sunwood-ai-labs/SourceSage), and [claude.ai](https://claude.ai/).  Most of the release notes, README, and commit messages were generated using the latest AI technologies.

## 🚀 Project Overview

bolt.Oscar-aws is an infrastructure automation template for rapidly deploying the AI-driven development environment Bolt.new on AWS. This repository uses Terraform to provision AWS resources and deploys a Streamlit application on ECS Fargate. Version 0.2.1 includes additions such as an ECR-based Fargate image update script, HTTPS and WebSocket support, README improvements, and enhanced security.


## 🆕 Latest News

- 🎉 **v0.2.1 Release**: Added an ECR-based Fargate image update script, HTTPS and WebSocket support, improved README, and enhanced security.


## ✨ Key Features

- Automated deployment of Streamlit applications using AWS ECS Fargate
- Infrastructure as Code with Terraform
- Secure network configuration and load balancing (HTTPS, WebSocket support)
- Logging with CloudWatch
- Automatic Fargate image updates using ECR


## 🔧 How to Use

### Prerequisites
- AWS CLI installed and configured
- Terraform installed
- Docker environment set up

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

## 🔄 Application Updates

### Docker Image Update Procedure

1. Update and build the Docker image locally:
```bash
docker build -t makisunwood/bolt:latest .
```

2. Push to DockerHub:
```bash
docker push makisunwood/bolt:latest
```

3. **Or**: Run the `Terraform/script/update-fargate-image.ps1` script to update via ECR. (AWS credentials required)

4. Update the ECS service to deploy the new image:
```bash
aws ecs update-service --cluster bolt-oscar-app-cluster --service bolt-oscar-app-service --force-new-deployment --region ap-northeast-1
```

> [!CAUTION]
> In a production environment, it is recommended to use a specific version tag (e.g., `v1.0.0`) instead of the `:latest` tag.

### How to Check for Updates

- You can check the deployment progress from the AWS Management Console: ECS > Clusters > Services.
- Check the logs of the new task in CloudWatch logs.


## 📦 Directory Structure

```bash
├─ Terraform/
│  ├─ main.tf          # Main Terraform configuration
│  ├─ outputs.tf       # Output value definitions
│  ├─ terraform.tfvars # Variable value settings
│  ├─ variables.tf     # Variable definitions
│  ├─ whitelist.csv    # IP whitelist
│  └─ script/          # Fargate image update script
├─ app.py              # Streamlit application
├─ requirements.txt
├─ README.md
```

## 🌿 Configuration Customization

### Example `terraform.tfvars` settings:
```hcl
aws_region      = "ap-northeast-1"
project_name    = "bolt-oscar-app"
vpc_cidr        = "10.0.0.0/16"
container_image = "makisunwood/bolt:latest"
# container_image = "498218886114.dkr.ecr.ap-northeast-1.amazonaws.com/neko-neko-ai-app:latest"
task_cpu        = "1024"    # 1 vCPU
task_memory     = "2048"    # 2GB
app_count       = 1
```

### `whitelist.csv` settings:
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

## 🤝 Contributions

1. Fork this repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Create a pull request

## 📄 License

bolt.Oscar-aws is released under the [MIT License](LICENSE).

## 🙏 Acknowledgements

- Thanks to the [Bolt.new](https://github.com/stackblitz/bolt.new) team
- Inspiration for Terraform module development was drawn from the AWS community.
- Gratitude to iris-s-coon and Maki for their contributions.

---

Achieve rapid AWS deployment of Bolt.new with bolt.Oscar-aws!