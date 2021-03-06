<#
.SYNOPSIS
Invokes the teardown of an on-premise data gateway,.

.DESCRIPTION
Prior to running this script ensure you are authenticated against Azure and have the desired subscription set.

.EXAMPLE
.\TearDown-30-DataGateway.ps1
#>

$params = Get-Content -Path $PSScriptRoot\datagateway.onpremisedatagateway.dev.psparameters.json -Raw | ConvertFrom-Json
& $PSScriptRoot\Remove-DataGateway.ps1 -resourceGroupName $params.resourceGroupName -dataGatewayName "cgw-aimmsgbus-dev-uksouth-xxxx"