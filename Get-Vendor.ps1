param (
    [string]$mac = ""
)
$escMac = [Uri]::EscapeDataString($mac)

$result = (Invoke-WebRequest https://api.macvendors.com/$escMac).Content

If(-Not $result){
    Write-Output "Not Found"
}
Else{
    Write-Output "Mac: $mac"
    
    Write-Output "Vendor: $result"
}