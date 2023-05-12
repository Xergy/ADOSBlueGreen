$RGsToRemove = Get-AzResourceGroup | Out-GridView -Title "Select RGs" -OutputMode Multiple

$RGsToRemove | ForEach-Object -Parallel {$_ | Remove-AzResourceGroup -Force }