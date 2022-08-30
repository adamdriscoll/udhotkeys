$IndexJs = Get-ChildItem "$PSScriptRoot\index.*.bundle.js"
$AssetId = [UniversalDashboard.Services.AssetService]::Instance.RegisterAsset($IndexJs.FullName)

function New-UDHotkey {
    param(
        [Parameter()]
        [string]$Id = (New-Guid).ToString(),
        [Parameter(Mandatory)]
        [string]$Key,
        [Parameter(Mandatory)]
        [Endpoint]$OnInvoke
    )

    End {

        $OnInvoke.Register($Id, $PSCmdlet)

        @{
            assetId  = $AssetId 
            isPlugin = $true 
            type     = "ud-hotkeys"
            id       = $Id

            keys     = $Key
            onInvoke = $OnInvoke
        }
    }
}