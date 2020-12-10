# Description
Look up the IP addresses for the provided hostname(s). Ex: Get-ShodanDNSResolve -domains "google.com,bing.com" -API"



## Prerequisites
You will need to have downloaded and installed the script already. Please see [Downloading](https://github.com/simeononsecurity/Shodan_PS#Download) and [Installing](https://github.com/simeononsecurity/Shodan_PS#Install) for further instruction.

## Usage
Run the script by entering the module name with the domains and api parameters both in quotes as seen below:
``` 
PS C:\WINDOWS\system32>  Get-ShodanDNSResolve -domains "google.com,bing.com,yahoo.com"  -API "ApiKeyStringGoesHere"
PS C:\WINDOWS\system32>
Domain     : "yahoo.com"
IP         :  "98.137.11.164"
RunspaceId : "RunspaceIDreturnedHere"

Domain     :  "google.com"
IP         :  "142.250.64.110"
RunspaceId : "RunspaceIDreturnedHere"

Domain     :  "bing.com"
IP         :  "204.79.197.200"
RunspaceId : "RunspaceIDreturnedHere"
```



