# set_services_to_manual.bat

**Note:** file name originally was `set_services_to_mannual.bat` (misspelling). Consider renaming to `set_services_to_manual.bat`.

## What this script does

This batch script updates the startup type of Windows services to **Manual** (or `demand`) using `sc config` and may start/stop services with `net start` / `net stop` commands.

### Services modified by this script

- `RpcSs`
- `DcomLaunch`
- `EventLog`
- `PlugPlay`
- `Power`
- `LSM`
- `SamSs`
- `Winmgmt`
- `Dhcp`
- `nsi`
- `NlaSvc`
- `MpsSvc`
- `WinDefend`
- `CryptSvc`
- `LanmanWorkstation`
- `W32Time`
- `Dnscache`
- `Themes`
- `EventSystem`
- `ShellHWDetection`
- `Schedule`
- `DiagTrack`
- `WSearch`
- `Fax`
- `TrkWks`
- `MapsBroker`
- `PcaSvc`
- `RemoteRegistry`
- `RetailDemo`
- `seclogon`
- `TabletInputService`
- `WerSvc`
- `stisvc`
- `wisvc`
- `XblAuthManager`
- `XblGameSave`
- `icssvc`
- `CertPropSvc`
- `WMPNetworkSvc`
- `TokenBroker`
- `workfolderssvc`
- `VacSvc`
- `WalletService`
- `WarpJITSvc`
- `Wcmsvc`
- `WaaSMedicSvc`
- `UsoSvc`
- `SSDPSRV`
- `PhoneSvc`
- `NgcSvc`
- `WPDBusEnum`
- `WpnService`
- `WpnUserService`

## Usage

1. **Review the script** (important): open the `.bat` file and make sure you understand which services will be changed.
2. If you agree, **run as Administrator**: right-click the `.bat` file and choose **Run as administrator**.
3. The script will set the listed services to Manual startup. Some commands may start/stop services immediately.

## Warnings and recommendations

- **Backup / Restore point:** Before changing service settings on a production machine, create a Windows restore point or a system backup.
- **Test on a VM or non-critical machine** first to avoid accidentally disabling essential services.
- **Do not run without understanding** — changing service startup types can break system features.
- If you want to revert changes, you can set services back to `auto` (automatic) or `disabled` using `sc config <ServiceName> start= auto|disabled`.

## Files to include in the repository

- `set_services_to_manual.bat` (or keep original name if you prefer)
- `README.md`  — this file
- `LICENSE` (optional) — e.g. MIT if you want to allow reuse
- `.gitignore` (optional) — helpful for ignoring logs, temp files)

## Script contents (for quick review)

```bat
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
```