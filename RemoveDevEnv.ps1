$settings = Get-Content (Join-Path $PSScriptRoot "Settings.json") | ConvertFrom-Json
Remove-NavContainer -containerName $Settings.containerName
