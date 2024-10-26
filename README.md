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
>  bolt.Oscarは、[cline (旧:Claude Dev)](https://github.com/clinebot/cline), [SourceSage](https://github.com/Sunwood-ai-labs/SourceSage), [claude.ai](https://claude.ai/)を活用して開発されたリポジトリです。リリースノート、README、コミットメッセージの大部分は、最新のAI技術を用いて生成されています。

## 🚀 プロジェクト概要

bolt.Oscar-awsは、AI駆動の開発環境であるBolt.newをAWS上で迅速に展開するためのインフラストラクチャ自動化テンプレートです。このリポジトリは、Terraformを用いてAWSリソースのプロビジョニングを行い、ECS Fargate上でStreamlitアプリケーションをデプロイします。  バージョン0.1.0では、AWSリソースのプロビジョニングとStreamlitアプリケーションのデプロイを自動化します。


## 🆕 最新情報

- 🎉 **v0.1.0リリース**: AWS ECS Fargateを使用したStreamlitアプリケーションの自動デプロイ機能を追加しました。Terraformを用いてVPC、サブネット、インターネットゲートウェイ、セキュリティグループ、ALB、ECSクラスター、ECSサービス、タスク定義などを自動的に作成・設定します。`app.py`はStreamlitアプリケーションのエントリーポイント、`requirements.txt`には必要なライブラリがリストアップされています。`whitelist.csv`でALBへのアクセスを許可するIPアドレスを指定し、`terraform.tfvars`でAWSリージョン、プロジェクト名、コンテナイメージなどの設定をカスタマイズできます。CloudWatchロググループが作成され、アプリケーションログを監視できます。


## ✨ 主な機能

- AWS ECS Fargateを使用したStreamlitアプリケーションの自動デプロイ
- Terraformによるインフラストラクチャのコード化
- セキュアなネットワーク構成とロードバランシング
- CloudWatchによるロギング


## 🔧 使用方法

### 前提条件
- AWS CLIのインストールと設定
- Terraformのインストール
- Docker環境の準備

### デプロイ手順

1. リポジトリのクローン:
```bash
git clone https://github.com/Sunwood-ai-labs/bolt.Oscar-aws
cd bolt.Oscar-aws
```

2. Terraform初期化:
```bash
cd Terraform
terraform init
```

3. 設定の確認:
```bash
terraform plan
```

4. デプロイの実行:
```bash
terraform apply
```

## 🔄 アプリケーションの更新

### Dockerイメージの更新手順

1. ローカルでDockerイメージを更新・ビルドします:
```bash
docker build -t makisunwood/bolt:latest .
```

2. DockerHubにプッシュします:
```bash
docker push makisunwood/bolt:latest
```

3. ECS Serviceを更新して新しいイメージをデプロイします:
```bash
aws ecs update-service --cluster bolt-oscar-app-cluster --service bolt-oscar-app-service --force-new-deployment --region ap-northeast-1
```

> [!CAUTION]
> プロダクション環境では、`:latest`タグの代わりに具体的なバージョンタグ（例：`v1.0.0`）を使用することをお勧めします。

### 更新の確認方法

- AWS管理コンソールのECS > クラスター > サービスから、デプロイの進行状況を確認できます
- CloudWatchログで新しいタスクのログを確認できます


## 📦 ディレクトリ構成

```bash
├─ Terraform/
│  ├─ main.tf          # メインのTerraform設定
│  ├─ outputs.tf       # 出力値の定義
│  ├─ terraform.tfvars # 変数値の設定
│  ├─ variables.tf     # 変数の定義
│  ├─ whitelist.csv    # IPホワイトリスト
├─ app.py              # Streamlitアプリケーション
├─ requirements.txt
├─ README.md
```

## 🌿 設定カスタマイズ

### `terraform.tfvars` の設定例:
```hcl
aws_region      = "ap-northeast-1"
project_name    = "bolt-oscar-app"
vpc_cidr        = "10.0.0.0/16"
container_image = "makisunwood/bolt:latest"
# container_image = "498218886114.dkr.ecr.ap-northeast-1.amazonaws.com/neko-neko-ai-app:latest"
task_cpu        = "256"
task_memory     = "512"
app_count       = 1
```

### `whitelist.csv` の設定:
`whitelist.csv` を編集してアクセス許可するIPアドレスを管理できます。


## 🐈 アーキテクチャ

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

## 🤝 コントリビューション

1. このリポジトリをフォーク
2. 機能ブランチを作成 (`git checkout -b feature/amazing-feature`)
3. 変更をコミット (`git commit -m 'Add some amazing feature'`)
4. ブランチにプッシュ (`git push origin feature/amazing-feature`)
5. プルリクエストを作成

## 📄 ライセンス

bolt.Oscar-awsは、[MITライセンス](LICENSE)の下で公開されています。

## 🙏 謝辞

- [Bolt.new](https://github.com/stackblitz/bolt.new) チームに感謝いたします
- Terraformモジュールの開発にあたり、AWSコミュニティからインスピレーションを得ました

---

bolt.Oscar-awsで、Bolt.newの迅速なAWSデプロイを実現しましょう！
