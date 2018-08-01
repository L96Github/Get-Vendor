<# Author: Luis Rita - 6 Jul 2018
Run MACVENDOR API in cmd/powershell
This file is the one that executes the API request
 to be used when the folder containing them is added to system PATH environment variable. After that just run speedtest on cmd/powershell
#>
param (
    [string]$mac = ""
)
$escMac = [Uri]::EscapeDataString($mac)

if (-Not $mac){
    Write-Error "MAC Address Empty. Please Enter a MAC Address"
}

try {
    $result = (Invoke-WebRequest https://api.macvendors.com/$escMac).Content

    Write-Output "Mac: $mac"

    If(-Not $result){
        Write-Output "Not Found"
    }
    Else{
        Write-Output "Vendor: $result"
    }
} catch {
    Write-Output "Mac: $mac"
    Write-Output $_.Exception.Response.StatusDescription
}

