param(
    [Parameter(Mandatory = $true)]
    [string]$BranchName
)

git checkout main
git pull origin main
git checkout -b $BranchName
