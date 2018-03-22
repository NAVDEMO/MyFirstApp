$containerName = Split-Path $PSScriptRoot -Leaf
Remove-NavContainer -containerName $containerName
