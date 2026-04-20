$ErrorActionPreference = "Stop"

$branches = @(
    "final/01-estrutura-docs",
    "final/02-python-sql",
    "final/03-c-cpp-fortran",
    "final/04-matlab-r-mathematica",
    "final/05-java-php-frontend",
    "final/06-revisao-transversal"
)

git checkout main
git pull origin main

foreach ($branch in $branches) {
    git checkout main
    git checkout -B $branch
    git push -u origin $branch
}

git checkout main
Write-Host "Branches finais criadas/atualizadas." -ForegroundColor Green
