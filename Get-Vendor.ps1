param (
    [string]$mac = ""
)
$escMac = [Uri]::EscapeDataString($mac)

if (-Not $mac){
    Write-Error "Please Enter a MAC Address"
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

