$ErrorActionPreference = 'Stop';

$packageName = 'gog-galaxy'
$registryUninstallerKeyName = '{7258BA11-600C-430E-A759-27E2C691A335}_is1'
$installerType = 'exe'
$url = 'http://cdn.gog.com/open/galaxy/client/setup_galaxy_1.0.7.2023.exe'
$silentArgs = '/VERYSILENT'
$validExitCodes = @(0)
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"
