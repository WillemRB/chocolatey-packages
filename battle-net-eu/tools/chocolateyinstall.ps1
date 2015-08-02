$ErrorActionPreference = 'Stop';

$packageName = 'battle-net-eu'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'http://dist.blizzard.com/downloads/bna-installers/322d5bb9ae0318de3d4cde7641c96425/retail.1/Battle.net-Setup-enGB.exe'
$url64 = $url

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64

  silentArgs    = ""
  validExitCodes= @(0)

  registryUninstallerKey = 'battle-net-eu'
}

Install-ChocolateyPackage @packageArgs
