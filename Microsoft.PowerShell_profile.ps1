Import-Module PSReadLine
Import-Module Terminal-Icons
Import-Module posh-git
Import-Module z

oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\blueish.omp.json" | Invoke-Expression

Set-PSReadLineOption -EditMode Windows
Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineKeyHandler -Key Tab -Function Complete

Set-Alias g git
Set-Alias ll ls
Set-Alias vim nvim
