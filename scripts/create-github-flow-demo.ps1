param(
    [Parameter(Mandatory=$true)]
    [string]$ModuleName
)

$branchName = "feat/$ModuleName"

git checkout -b $branchName
Write-Host "Branch criada: $branchName"
Write-Host "Próximo passo:"
Write-Host "  git add ."
Write-Host "  git commit -m `"feat: add $ModuleName module`""
Write-Host "  git push -u origin $branchName"
