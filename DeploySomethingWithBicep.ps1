

# https://learn.microsoft.com/en-us/azure/virtual-machines/windows/quick-create-bicep?tabs=PowerShell



New-AzResourceGroup -Name LearningBicep -Location usgovvirginia
New-AzResourceGroupDeployment -ResourceGroupName LearningBicep -TemplateFile main.bicep -adminUsername "azure-admin"