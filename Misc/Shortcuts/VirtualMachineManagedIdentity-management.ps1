# Usage - returns a Management Scoped Managed Identity token for a Virtual Machine - IEX(New-Object System.Net.WebClient).DownloadString("https://raw.githubusercontent.com/NetSPI/MicroBurst/master/Misc/Shortcuts/VirtualMachineManagedIdentity-management.ps1")
(Invoke-WebRequest -Uri 'http://169.254.169.254/metadata/identity/oauth2/token?api-version=2018-02-01&resource=https://management.azure.com/' -Method GET -Headers @{Metadata="true"} -UseBasicParsing).Content