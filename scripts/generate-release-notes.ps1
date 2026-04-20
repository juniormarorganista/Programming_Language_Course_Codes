param(
    [string]$Version = "v0.0.0"
)

$template = @"
# Release $Version

## O que entrou
-

## Linguagens afetadas
-

## Scripts e docs adicionados
-

## Como testar
-

## Próximos passos
-
"@

$outPath = ".\docs\release-$Version.md"
$template | Out-File -FilePath $outPath -Encoding utf8
Write-Host "Arquivo criado em $outPath" -ForegroundColor Green
