@echo off
echo Setting only essential Windows services to Automatic...
REM === CRITICAL SERVICES ===
sc config RpcSs start= auto
sc config DcomLaunch start= auto
sc config EventLog start= auto
sc config PlugPlay start= auto
sc config Power start= auto
sc config LSM start= auto
sc config SamSs start= auto
sc config Winmgmt start= auto
sc config Dhcp start= auto
sc config nsi start= auto
sc config NlaSvc start= auto
sc config MpsSvc start= auto
sc config WinDefend start= auto
sc config CryptSvc start= auto
sc config LanmanWorkstation start= auto
sc config W32Time start= auto
sc config Dnscache start= auto
sc config Themes start= auto
sc config EventSystem start= auto
sc config ShellHWDetection start= auto
sc config Schedule start= auto

echo Setting non-critical services to Manual startup...
REM === NON-ESSENTIAL SERVICES ===
sc config DiagTrack start= demand
sc config WSearch start= demand
sc config Fax start= demand
sc config TrkWks start= demand
sc config MapsBroker start= demand
sc config PcaSvc start= demand
sc config RemoteRegistry start= demand
sc config RetailDemo start= demand
sc config seclogon start= demand
sc config TabletInputService start= demand
sc config WerSvc start= demand
sc config stisvc start= demand
sc config wisvc start= demand
sc config XblAuthManager start= demand
sc config XblGameSave start= demand
sc config icssvc start= demand
sc config CertPropSvc start= demand
sc config WMPNetworkSvc start= demand
sc config TokenBroker start= demand
sc config workfolderssvc start= demand
sc config VacSvc start= demand
sc config WalletService start= demand
sc config WarpJITSvc start= demand
sc config Wcmsvc start= demand
sc config WaaSMedicSvc start= demand
sc config UsoSvc start= demand
sc config SSDPSRV start= demand
sc config PhoneSvc start= demand
sc config NgcSvc start= demand
sc config WPDBusEnum start= demand
sc config WpnService start= demand
sc config WpnUserService start= demand

echo Done. Reboot your PC for changes to take effect.
pause
