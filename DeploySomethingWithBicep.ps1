

# https://learn.microsoft.com/en-us/azure/virtual-machines/windows/quick-create-bicep?tabs=PowerShell

$ResourceGroupPrefix = "ADOSBlueGreen"
$EnvSeed = "103"
$ResourceGroupName = "$($ResourceGroupPrefix)$($EnvSeed)"
$LocationName = "usgovvirginia"
#$LocationName = "eastus"

if (!$adminPassword) {$adminPassword = Read-Host "Enter adminPassword" -AsSecureString}


$VmNames = "Dc101","Ca101","AdosFeBlu101","AdosFeBlu102","AdosSrhBlu101","AdosFeGrn101","AdosFeGrn102","AdosSrhGrn101","SrvBlu101","SrvGrn101"

New-AzResourceGroup -Name $ResourceGroupName -Location $LocationName
New-AzResourceGroupDeployment -ResourceGroupName $ResourceGroupName  -TemplateFile vnet.bicep -Verbose

$VmNames | ForEach-Object -Parallel {
    Write-Host "Processing $($_) in $($using:ResourceGroupName)..." -ForegroundColor Cyan
    New-AzResourceGroupDeployment -Name $_ -ResourceGroupName $using:ResourceGroupName  -TemplateFile vm.bicep -adminUsername "azure-admin" -vmName $_  -adminPassword $using:adminPassword -Verbose
    } 


