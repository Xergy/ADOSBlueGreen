

get-azvmsize -Location $LocationName | ogv

Standard_A4_v2	4	8192	8	1047552	40960	
Standard_A4_v2

$RGs = Get-AzResourceGroup | Out-GridView -Title "Select RGs" -OutputMode Multiple

$RGs | ForEach-Object -Parallel {$_ | Remove-AzResourceGroup -Force }
