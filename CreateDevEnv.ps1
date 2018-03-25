$mylicense = "c:\temp\mylicense.flf"
$settings = Get-Content (Join-Path $PSScriptRoot "Settings.json") | ConvertFrom-Json
$sourceFolder = Join-Path $PSScriptRoot $settings.sourceFolder
New-NavContainer -accept_eula `
                 -containerName $settings.containerName `
                 -imageName $settings.imageName `
                 -auth Windows `
                 -licensefile $mylicense `
                 -updateHosts `
                 -includeCSide `
                 -additionalParameters @("--volume ${sourceFolder}:c:\source") 
Import-DeltasToNavContainer -containerName $settings.containerName -deltaFolder $sourceFolder -compile
