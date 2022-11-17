# First parameter is the source param and the second is the destination param file.
param ($globalParamFilePath,$baseParamFilePath)

# Read configuration files
$globalParams = Get-Content -Raw -Path $globalParamFilePath | ConvertFrom-Json
$baseParams = Get-Content -Raw -Path $baseParamFilePath | ConvertFrom-Json

foreach ($i in $globalParams.parameters.PSObject.Properties)
{
  $baseParams.parameters | Add-Member -Name $i.Name -Value $i.Value  -MemberType NoteProperty -force
}

# Output to console and overwrite base parameter file
$baseParams | ConvertTo-Json -depth 100 |Tee-Object $baseParamFilePath
