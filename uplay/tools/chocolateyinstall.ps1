$ErrorActionPreference = 'Stop';

$packageName = 'uplay'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://ubistatic3-a.akamaihd.net/orbit/launcher_installer/UplayInstaller.exe'
$url64 = $url

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  url64bit      = $url

  silentArgs    ='' # "/s /S /q /Q /quiet /silent /SILENT /VERYSILENT -s"
  validExitCodes= @(0)

  # optional
  registryUninstallerKey = '' #ensure this is the value in the registry
  checksum      = ''
  checksumType  = 'md5'
  checksum64    = ''
  checksumType64= 'md5'
}

Install-ChocolateyPackage @packageArgs
