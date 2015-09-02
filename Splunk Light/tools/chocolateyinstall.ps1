$ErrorActionPreference = 'Stop';

$packageName = 'Splunk Light'
$registryUninstallerKeyName = 'SplunkLight'
$installerType = 'msi'
$url = 'https://download.splunk.com/products/splunk_light/releases/6.2.5/windows/splunklight-6.2.5-272645-x86-release.msi'
$url64 = 'https://download.splunk.com/products/splunk_light/releases/6.2.5/windows/splunklight-6.2.5-272645-x64-release.msi'
$silentArgs = '/quiet'
$validExitCodes = @(0)
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

#Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" ["$url64"  -validExitCodes $validExitCodes -checksum $checksum -checksumType $checksumType -checksum64 $checksum64 -checksumType64 $checksumType64]
Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64"
