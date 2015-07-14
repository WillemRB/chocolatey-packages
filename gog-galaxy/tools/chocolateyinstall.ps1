$ErrorActionPreference = 'Stop';

$packageName = 'gog-galaxy'
$registryUninstallerKeyName = 'gog-galaxy'
$installerType = 'exe'
$url = 'http://cdn.gog.com/open/galaxy/client/setup_galaxy_1.0.5.14.exe'
$silentArgs = '/VERYSILENT'
$validExitCodes = @(0)
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"
