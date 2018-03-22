$mylicense = "c:\temp\mylicense.flf"
$imageName = "microsoft/dynamics-nav:2017-cu13"
$sourceFolder = Join-Path $PSScriptRoot "Source"
$containerName = Split-Path $PSScriptRoot -Leaf
New-NavContainer -accept_eula `
                 -containerName $containerName `
                 -imageName $imageName `
                 -auth Windows `
                 -licensefile $mylicense `
                 -updateHosts `
                 -includeCSide `
                 -additionalParameters @("--volume ${sourceFolder}:c:\source") 
Import-DeltasToNavContainer -containerName $containerName -deltaFolder $sourceFolder -compile
