@(set "0=%~f0"^)#) & powershell -nop -c iex([io.file]::ReadAllText($env:0)) & exit /b
#:: double-click to run or just copy-paste into powershell - it's a standalone hybrid script
sp 'HKCU:\Volatile Environment' 'DisableServices' @'

## Window Title
$host.ui.RawUI.WindowTitle = 'Disable Services '

## Set-ExecutionPolicy RemoteSigned 
## & <copy path>


Write-Host "Loading Script"

Set-Service -Name "AJRouter" -StartupType Disabled -Status Stopped
Stop-Service -Name "AJRouter"
Write-Host "AllJoyn Router Service Disabled"

Set-Service -Name "BITS" -StartupType Disabled -Status Stopped
Stop-Service -Name "BITS"
Write-Host "Background Intelligent Transfer Service Disabled"

Set-Service -Name "BDESVC" -StartupType Disabled -Status Stopped
Stop-Service -Name "BDESVC"
Write-Host "BitLocker Drive Service Disabled"

Set-Service -Name "BraveElevationService" -StartupType Disabled -Status Stopped
Stop-Service -Name "BraveElevationService"
Write-Host "Brave Elevation Service Disabled"

Set-Service -Name "brave" -StartupType Disabled -Status Stopped
Stop-Service -Name "brave"
Write-Host "Brave Update Service Disabled"

Set-Service -Name "bravem" -StartupType Disabled -Status Stopped
Stop-Service -Name "bravem"
Write-Host "BraveM Service Disabled"

Set-Service -Name "BraveVpnWireguardService" -StartupType Disabled -Status Stopped
Stop-Service -Name "BraveVpnWireguardService"
Write-Host "BraveVpnWireguard Service Disabled"

Set-Service -Name "BraveVpnService" -StartupType Disabled -Status Stopped
Stop-Service -Name "BraveVpnService"
Write-Host "BraveVPN Service Disabled"

Set-Service -Name "DiagTrack" -StartupType Disabled -Status Stopped
Stop-Service -Name "DiagTrack"
Write-Host "Telemetry Service Disabled"

Set-Service -Name "VaultSvc" -StartupType Disabled -Status Stopped
Stop-Service -Name "VaultSvc"
Write-Host "Credential Manager Service Disabled"

##Set-Service -Name "DsSvc" -StartupType Disabled -Status Stopped
##Stop-Service -Name "DsSvc"
##Write-Host "Data Sharing Service Disabled"

## Disabled because this messes with the driver or any other installation!
##Set-Service -Name "DeviceInstall" -StartupType Disabled -Status Stopped
##Stop-Service -Name "DeviceInstall"
##Write-Host "Device Install Service Disabled"

Set-Service -Name "MapsBroker" -StartupType Disabled -Status Stopped
Stop-Service -Name "MapsBroker"
Write-Host "Maps Manager Service Disabled"

Set-Service -Name "fhsvc" -StartupType Disabled -Status Stopped
Stop-Service -Name "fhsvc"
Write-Host "File History Service Disabled"

Set-Service -Name "lfsvc" -StartupType Disabled -Status Stopped
Stop-Service -Name "lfsvc"
Write-Host "Geolocation Service Disabled"

Set-Service -Name "HvHost" -StartupType Disabled -Status Stopped
Stop-Service -Name "HvHost"
Write-Host "HV Host Service Disabled"

Set-Service -Name "vmickvpexchange" -StartupType Disabled -Status Stopped
Stop-Service -Name "vmickvpexchange"
Write-Host "Hyper-V Data Exchange Service Disabled"

Set-Service -Name "vmicguestinterface" -StartupType Disabled -Status Stopped
Stop-Service -Name "vmicguestinterface"
Write-Host "Hyper-V Guest Service Disabled"

Set-Service -Name "vmicshutdown" -StartupType Disabled -Status Stopped
Stop-Service -Name "vmicshutdown"
Write-Host "Hyper-V Guest Shutdown Service Disabled"

Set-Service -Name "vmicheartbeat" -StartupType Disabled -Status Stopped
Stop-Service -Name "vmicheartbeat"
Write-Host "Hyper-V Heartbeat Service Disabled"

Set-Service -Name "vmicvmsession" -StartupType Disabled -Status Stopped
Stop-Service -Name "vmicvmsession"
Write-Host "Hyper-V Powershell Direct Service Disabled"

Set-Service -Name "vmicrdv" -StartupType Disabled -Status Stopped
Stop-Service -Name "vmicrdv"
Write-Host "Hyper-V Remote Desktop Virtualization Service Disabled"

Set-Service -Name "vmictimesync" -StartupType Disabled -Status Stopped
Stop-Service -Name "vmictimesync"
Write-Host "Hyper-V Time Synchronization Service Disabled"

Set-Service -Name "vmicvss" -StartupType Disabled -Status Stopped
Stop-Service -Name "vmicvss"
Write-Host "Hyper-V Volume Shadow Copy Requestor Service Disabled"

Set-Service -Name "diagnosticshub.standardcollector.service" -StartupType Disabled -Status Stopped
Stop-Service -Name "diagnosticshub.standardcollector.service"
Write-Host "Microsoft (R) Diagnostics Hub Standard Collector Service Disabled"

Set-Service -Name "wlidsvc" -StartupType Disabled -Status Stopped
Stop-Service -Name "wlidsvc"
Write-Host "Microsoft Account Sign-in Assistant Service Disabled"

Set-Service -Name "MicrosoftEdgeElevationService" -StartupType Disabled -Status Stopped
Stop-Service -Name "MicrosoftEdgeElevationService"
Write-Host "Microsoft Edge Elevation (MicrosoftEdgeElevationService) Service Disabled"

Set-Service -Name "edgeupdate" -StartupType Disabled -Status Stopped
Stop-Service -Name "edgeupdate"
Write-Host "Microsoft Edge Update Service (edgeupdate) Service Disabled"

Set-Service -Name "edgeupdatem" -StartupType Disabled -Status Stopped
Stop-Service -Name "edgeupdatem"
Write-Host "Microsoft Edge Update Service (edgeupdatem) Service Disabled"

Set-Service -Name "smphost" -StartupType Disabled -Status Stopped
Stop-Service -Name "smphost"
Write-Host "Microsoft Storage Spaces SMP Service Disabled"

Set-Service -Name "InstallService" -StartupType Disabled -Status Stopped
Stop-Service -Name "InstallService"
Write-Host "Microsoft Store Install Disabled"

Set-Service -Name "NaturalAuthentication" -StartupType Disabled -Status Stopped
Stop-Service -Name "NaturalAuthentication"
Write-Host "Natural Authentication"

Set-Service -Name "NlaSvc" -StartupType Disabled -Status Stopped
Stop-Service -Name "NlaSvc"
Write-Host "Network Location Awareness Service Disabled"

Set-Service -Name "WpcMonSvc" -StartupType Disabled -Status Stopped
Stop-Service -Name "WpcMonSvc"
Write-Host "Parental Controls Service Disabled"

Set-Service -Name "SEMgrSvc" -StartupType Disabled -Status Stopped
Stop-Service -Name "SEMgrSvc"
Write-Host "Payments and NFC/SE Manager Service Disabled"

Set-Service -Name "PhoneSvc" -StartupType Disabled -Status Stopped
Stop-Service -Name "PhoneSvc"
Write-Host "Phone Service (Telephony State) Service Disabled"

Set-Service -Name "Spooler" -StartupType Disabled -Status Stopped
Stop-Service -Name "Spooler"
Write-Host "Print Spooler Service Disabled"

Set-Service -Name "PrintNotify" -StartupType Disabled -Status Stopped
Stop-Service -Name "PrintNotify"
Write-Host "Printer Extensions and Notifications Service Disabled"

Set-Service -Name "RemoteRegistry" -StartupType Disabled -Status Stopped
Stop-Service -Name "RemoteRegistry"
Write-Host "Remote Registry Service Disabled"

Set-Service -Name "RetailDemo" -StartupType Disabled -Status Stopped
Stop-Service -Name "RetailDemo"
Write-Host "Retail Demo Service Disabled"

Set-Service -Name "LanmanServer" -StartupType Disabled -Status Stopped
Stop-Service -Name "LanmanServer"
Write-Host "Server Service Disabled"

Set-Service -Name "SCardSvr" -StartupType Disabled -Status Stopped
Stop-Service -Name "SCardSvr"
Write-Host "Smart Card Service Disabled"

Set-Service -Name "ScDeviceEnum" -StartupType Disabled -Status Stopped
Stop-Service -Name "ScDeviceEnum"
Write-Host "Smart Card Device Enumeration Service Disabled"

Set-Service -Name "SCPolicySvc" -StartupType Disabled -Status Stopped
Stop-Service -Name "SCPolicySvc"
Write-Host "Smart Card Removal Policy Service Disabled"

Set-Service -Name "UsoSvc" -StartupType Disabled -Status Stopped
Stop-Service -Name "UsoSvc"
Write-Host "Update Orchestrator Service Disabled"

Set-Service -Name "upnphost" -StartupType Disabled -Status Stopped
Stop-Service -Name "upnphost"
Write-Host "UPnP Device Host Service Disabled"

Set-Service -Name "WalletService" -StartupType Disabled -Status Stopped
Stop-Service -Name "WalletService"
Write-Host "WalletService Disabled"

##Set-Service -Name "TokenBroker" -StartupType Disabled -Status Stopped
##Stop-Service -Name "TokenBroker"
##Write-Host "Web Account Manager Service Disabled"

Set-Service -Name "WbioSrvc" -StartupType Disabled -Status Stopped
Stop-Service -Name "WbioSrvc"
Write-Host "Windows Biometric Service Disabled"

Set-Service -Name "FrameServer" -StartupType Disabled -Status Stopped
Stop-Service -Name "FrameServer"
Write-Host "Windows Camera Frame Service Disabled"

Set-Service -Name "FrameServerMonitor" -StartupType Disabled -Status Stopped
Stop-Service -Name "FrameServerMonitor"
Write-Host "Windows Camera Frame Server Monitor Service Disabled"

Set-Service -Name "MixedRealityOpenXRSvc" -StartupType Disabled -Status Stopped
Stop-Service -Name "MixedRealityOpenXRSvc"
Write-Host "Windows Mixed Reality OpenXR Service Disabled"

Set-Service -Name "WSearch" -StartupType Disabled -Status Stopped
Stop-Service -Name "WSearch"
Write-Host "Windows Search Service Disabled"

Set-Service -Name "wuauserv" -StartupType Disabled -Status Stopped
Stop-Service -Name "wuauserv"
Write-Host "Windows Update Service Disabled"

Set-Service -Name "XboxGipSvc" -StartupType Disabled -Status Stopped
Stop-Service -Name "XboxGipSvc"
Write-Host "Xbox Accessory Management Service Disabled"

Set-Service -Name "XblAuthManager" -StartupType Disabled -Status Stopped
Stop-Service -Name "XblAuthManager"
Write-Host "Xbox Live Auth Manager Service Disabled"

Set-Service -Name "XblGameSave" -StartupType Disabled -Status Stopped
Stop-Service -Name "XblGameSave"
Write-Host "Xbox Live Game Save Service Disabled"

Set-Service -Name "XboxNetApiSvc" -StartupType Disabled -Status Stopped
Stop-Service -Name "XboxNetApiSvc"
Write-Host "Xbox Live Networking Service Disabled"




## cleanup
$cleanup = gp 'Registry::HKEY_Users\S-1-5-21*\Volatile*' DisableServices -ea 0
if ($cleanup) {rp $cleanup.PSPath DisableServices -force -ea 0}



## Exit
##write-host -nonew -fore red -back black "`n Script Executed, check errors if any!";
##exit



## Ask to run script as admin
'@.replace("$@","'@").replace("@$","@'") -force -ea 0;
$A = '-nop -noe -c & {iex((gp ''Registry::HKEY_Users\S-1-5-21*\Volatile*'' DisableServices -ea 0)[0].DisableServices)}'
start powershell -args $A -verb runas
$_Press_Enter
#::



