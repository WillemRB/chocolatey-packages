$ErrorActionPreference = 'Stop';

$packageName = 'gog-galaxy'
$registryUninstallerKeyName = '{7258BA11-600C-430E-A759-27E2C691A335}_is1'
$installerType = 'exe'
$silentArgs = '/VERYSILENT'
$validExitCodes = @(0)

$file = (Get-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\$registryUninstallerKeyName").UninstallString
	
Uninstall-ChocolateyPackage -PackageName $packageName -FileType $installerType -SilentArgs $silentArgs -validExitCodes $validExitCodes -File $file
