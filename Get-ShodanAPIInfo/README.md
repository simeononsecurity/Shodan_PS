# Description
Returns information about the API plan belonging to the given API key. Ex: Get-ShodanAPIInfo -API

This is useful because it will let you know how many Scan and Query credits you have left. 


## Prerequisites
You will need to have downloaded and installed the script already. Please see [Downloading](https://github.com/makeitbetter/Shodan_PS#Download) and [Installing](https://github.com/makeitbetter/Shodan_PS#Install) for further instruction.
## Usage
Run the script by entering the module name with a dash - and the api key in quotes
```
PS C:\WINDOWS\system32> Get-ShodanAPIInfo -API "YourApiKeyGoeshere"

Data              Value
----              -----
"scan_credits"      100
 "usage_limits"
"scan_credits"      100
 "query_credits"    100
 "monitored_ips"     16
 "plan"           "dev"
 "https"          false
 "unlocked"        true
 "query_credits"    100
 "monitored_ips"   null
 "unlocked_left"    100
 "telnet"         false
 ```



