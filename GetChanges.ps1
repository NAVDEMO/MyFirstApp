$sourceFolder = Join-Path $PSScriptRoot "Source"
$containerName = Split-Path $PSScriptRoot -Leaf
Export-ModifiedObjectsAsDeltas -containerName $containerName -deltaFolder $sourceFolder
