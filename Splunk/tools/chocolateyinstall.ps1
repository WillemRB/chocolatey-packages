$ErrorActionPreference = 'Stop';

$packageName = 'Splunk Enterprise'
$registryUninstallerKeyName = 'Splunk'
$installerType = 'msi'
$url = 'https://download.splunk.com/products/splunk/releases/6.2.3/windows/splunklight-6.2.3-264376-x86-release.msi'
$url64 = 'https://download.splunk.com/products/splunk/releases/6.2.3/windows/splunklight-6.2.3-264376-x64-release.msi'
$silentArgs = '/quiet'
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

#Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" ["$url64"  -validExitCodes $validExitCodes -checksum $checksum -checksumType $checksumType -checksum64 $checksum64 -checksumType64 $checksumType64]
Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64"