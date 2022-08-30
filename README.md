# UDHotkeys

Hotkey component for Universal Dashboard

## Install

```powershell
Install-Module UniversalDashboard.HotKeys
```

## Usage 

This component is based on [`react-hotkeys`](https://www.npmjs.com/package/react-hotkeys#GlobalHotKeys-component).

### Single Key

```powershell
New-UDHotkey -Key 'd' -OnInvoke {
    Show-UDToast 'You pressed D'
}
```

### Key Combination

```powershell
New-UDHotkey -Key 'shift+d' -OnInvoke {
    Show-UDToast 'You pressed shift+D'
}
```