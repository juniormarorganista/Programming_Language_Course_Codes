param(
    [string]$BranchName = "feat/study-cycle",
    [string]$IssueTitle = "study: semana XX - foco"
)

Write-Host "Criando branch de estudo..." -ForegroundColor Cyan
git checkout chore/rebuild-learning-repo
git checkout -b $BranchName

Write-Host "Sugestão de issue:" -ForegroundColor Green
Write-Host $IssueTitle
