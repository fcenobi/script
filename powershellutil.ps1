display ip and macaddress

Get-WmiObject win32_networkadapterconfiguration `
| Select-Object -Property @{name='IPAddress';Expression={($_.IPAddress[0])}},MacAddress `
| Where IPAddress -NE $null
