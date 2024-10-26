# ECRを使用したFargateイメージ更新PowerShellスクリプト

# 環境変数からAWSアカウントIDを取得
$accountId = $env:AWS_ACCOUNT_ID
if (-not $accountId) {
    Write-Host "環境変数 AWS_ACCOUNT_ID が設定されていません"
    exit 1
}

# 変数設定
$region = "ap-northeast-1"
$ecrRepo = "bolt-oscar-app"
$imageTag = "latest"
$ecrUri = "${accountId}.dkr.ecr.${region}.amazonaws.com"
$imageName = "${ecrUri}/${ecrRepo}:${imageTag}"
$clusterName = "bolt-oscar-app-cluster"
$serviceName = "bolt-oscar-app-service"

# エラーが発生した場合にスクリプトを停止
$ErrorActionPreference = "Stop"

try {
    # AWS認証情報の更新を確実に行う
    Write-Host "AWS認証情報を更新しています..."
    aws sts get-caller-identity

    # 1. ECRにログイン（失敗した場合は再試行）
    Write-Host "ECRにログインしています..."
    $loginAttempts = 0
    $maxAttempts = 3
    
    do {
        try {
            aws ecr get-login-password --region $region | docker login --username AWS --password-stdin $ecrUri
            $loginSuccess = $true
        }
        catch {
            $loginAttempts++
            Write-Host "ECRログイン試行 $loginAttempts of $maxAttempts 失敗"
            Start-Sleep -Seconds 5
            $loginSuccess = $false
        }
    } while (-not $loginSuccess -and $loginAttempts -lt $maxAttempts)

    if (-not $loginSuccess) {
        throw "ECRログインに失敗しました"
    }

    # 2. 新しいDockerイメージをビルド
    Write-Host "Dockerイメージをビルドしています..."
    docker build -t ${ecrRepo}:$imageTag .

    # 3. イメージにECRリポジトリのタグを付ける
    Write-Host "イメージにタグを付けています..."
    docker tag ${ecrRepo}:$imageTag $imageName

    # 4. ECRにイメージをプッシュ
    Write-Host "イメージをECRにプッシュしています..."
    docker push $imageName

    # 5. ECSサービスを強制的に新しいデプロイメントにする
    Write-Host "ECSサービスを更新しています..."
    aws ecs update-service --cluster $clusterName --service $serviceName --force-new-deployment

    # 6. デプロイの状態を確認
    Write-Host "デプロイの状態を確認しています..."
    aws ecs describe-services --cluster $clusterName --services $serviceName

    Write-Host "更新プロセスが完了しました。"
}
catch {
    Write-Host "エラーが発生しました: $_"
    exit 1
}
