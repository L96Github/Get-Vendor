<# Author: Luis Rita - 6 Jul 2018
Run MACVENDOR API in cmd/powershell
This file is the one that executes the API request
 to be used when the folder containing them is added to system PATH environment variable. After that just run speedtest on cmd/powershell
#>
param (
    [string]$mac = ""
)
$escMac = [Uri]::EscapeDataString($mac)

Write-Output " "

if (-Not $mac){
    Write-Error "MAC Address Empty. Please Enter a MAC Address"
}

try {
    $result = (Invoke-WebRequest https://api.macvendors.com/$escMac).Content

    Write-Output "`tMac: $mac"

    If(-Not $result){
        Write-Output "`tNot Found"
    }
    Else{
        Write-Output "`tVendor: $result"
    }
} catch {
    Write-Output "`tMac: $mac"
    Write-Output $_.Exception.Response.StatusDescription
}
Write-Output " "
