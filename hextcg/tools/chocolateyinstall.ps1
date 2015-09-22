$ErrorActionPreference = 'Stop';

$packageName = 'hextcg'
$registryUninstallerKeyName = 'hextcg'
$installerType = 'exe'
$url = 'http://dl.hex.gameforge.com/HEXSetup.exe'
$silentArgs = '/S'
$validExitCodes = @(0)
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"
