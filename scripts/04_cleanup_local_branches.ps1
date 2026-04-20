param(
    [switch]$Force
)

$ErrorActionPreference = "Stop"

$protected = @("main", "master", "backup/branch-salad-final")
$branches = git branch --format="%(refname:short)"

foreach ($branch in $branches) {
    if ($protected -contains $branch) {
        continue
    }

    if ($branch -like "final/*") {
        continue
    }

    if ($Force) {
        git branch -D $branch
    } else {
        git branch -d $branch
    }
}
