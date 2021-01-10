Install-Module Az -Force -AllowClobber
Import-Module Az
Connect-AzAccount
Get-AzContext
Get-AzResourceGroup | Format-Table
Get-AzResourceGroup | Export-Csv
Get-AzResourceGroup | Out-GridView
Get-AzResourceGroup | select ResourceGroupName, Location, ManagedBy
Get-AzResourceGroup | Where-Object {$_.Location}

New-AzResourceGroup -Name solo  -Location 'North Europe'
New-AzVM -ResourceGroupName solo -Location 'North Europe' -Name solovm -Image UbuntuLTS
 ### CLI

 az login
 az -h
 az account list
 az group list
 az group list --query "[].name"
 az group list --query "[].location"
 az group list --query "[].{key:value, key2:value}"
 az group list --output table
 az group list --output yaml

