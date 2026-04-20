$ErrorActionPreference = "Stop"

$docs = @(
    "README.md",
    "docs\COMO_USAR.md",
    "docs\ROADMAP.md",
    "docs\CONVENCOES.md",
    "docs\ACHIEVEMENTS_GITHUB.md",
    "docs\REVISAO_TRANSVERSAL.md"
)

foreach ($doc in $docs) {
    if (Test-Path $doc) {
        Write-Host "[OK] $doc"
    } else {
        Write-Host "[FALTA] $doc"
    }
}
