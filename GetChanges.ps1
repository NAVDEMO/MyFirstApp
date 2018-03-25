$settings = Get-Content (Join-Path $PSScriptRoot "Settings.json") | ConvertFrom-Json
$sourceFolder = Join-Path $PSScriptRoot $settings.sourceFolder
$objectsFolder = Join-Path $PSScriptRoot $settings.objectsFolder
Export-ModifiedObjectsAsDeltas -containerName $settings.containerName -deltaFolder $sourceFolder -objectsFolder $objectsFolder
