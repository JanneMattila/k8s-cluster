Param (
    [Parameter(HelpMessage = "Deployment target resource group")] 
    [string] $ResourceGroupName = "rg-platform",

    [Parameter(HelpMessage = "Deployment target resource group location")] 
    [string] $Location = "North Europe",

    [Parameter(HelpMessage = "Deployment target resource group location")] 
    [string] $StorageName = "platformredis00001",

    [Parameter(HelpMessage = "Deployment target resource group location")] 
    [string] $ShareName = "share"
)

$ErrorActionPreference = "Stop"

az group create --name $ResourceGroupName --location $Location
az storage account create `
    --name $StorageName `
    --resource-group $ResourceGroupName `
    --location $Location `
    --sku Standard_LRS `
    --https-only

$connectionString = $(az storage account show-connection-string `
        --name $StorageName `
        --resource-group $ResourceGroupName `
        -o TSV)

az storage share create --name $ShareName --connection-string $connectionString
