param(
    [string]$Version = "v1.0.0"
)

$ErrorActionPreference = "Stop"

git checkout main
git pull origin main
git tag $Version
git push origin $Version

Write-Host "Tag $Version criada e enviada." -ForegroundColor Green
