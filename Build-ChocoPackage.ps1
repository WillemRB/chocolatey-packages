[CmdletBinding()]
param (
    [Parameter()]
    [String]
    $pathToNuSpec
)

# Test if NuSpec file exists
if (-not (Test-Path $pathToNuSpec)) {
    Write-Host "'$pathToNuSpec' does not exist" -ForegroundColor Red
    return
}

# Remove all comments from PowerShell scripts
Get-ChilItem -Path $pathToNuSpec.DirectoryName -Filter "*.ps1" -Recurse {
    Get-Content $_ |
        Where-Object { $_ -notmatch "^\s*#" } |
        ForEach-Object { $_ -replace '(^.*?)\s*?[^``]#.*','$1' } |
        Out-File $_+".~" -Encoding utf8
    Move-Item -fo $_+".~" $_
}

# Create the Choco package
choco pack $pathToNuSpec