# Get-Vendor Command

Get Manufacturer of a product by inputting MAC Address from the command line

Author: [Luis Rita](https://github.com/L96Github) | [LinkedIn](https://www.linkedin.com/in/luis-ivan-rita)

This script uses [Mac Vendors](https://macvendors.com/) API. 
It allows you to use the api by calling it from powershell or command prompt.

### Installation

1. Clone or download this repo.

2. Add the path to the folder you downloaded to your `PATH` enviroment variable.
  + Control Panel > System > Change Settings
  + Go to 'Advanced' tab and click on 'Environment Variables'
  + On 'System Variables' find the variable 'Path' and double click
  + Click 'New' and insert the path where you downloaded this repo

3. Restart your command line. If Powershell or Command Prompt was open, close and reopen the programs.

### Use

```powershell
    get-vendor <mac-address>
```
Example:
```powershell
    get-vendor 00:11:22:33:44:55
    Mac: 00:11:22:33:44:55
    Vendor: Xyz, Inc
```

It accepts MAC addresses in the following formats:
  + 00-11-22-33-44-55
  + 00:11:22:33:44:55
  + 00.11.22.33.44.55
  + 001122334455
  + 0011.2233.4455
