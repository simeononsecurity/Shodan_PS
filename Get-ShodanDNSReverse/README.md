# Description
Look up the hostnames that have been defined for the given list of IP addresses. Ex: Get-ShodanDNSReverse -ips 4.4.4.4,8.8.8.8 -API

## Prerequisites
You will need to have downloaded and installed the script already. Please see [Downloading](https://github.com/simeononsecurity/Shodan_PS#Download) and [Installing](https://github.com/simeononsecurity/Shodan_PS#Install) for further instruction.

## Usage
Run the script by entering the module name with with the ips parameter followed by a comma separated list of ip addresses within quotes, then the API parameter followed by the api key in quotes
```
PS C:\WINDOWS\system32> Get-ShodanDNSReverse -ips "exampleip,anotherexampleip" -API "ApiKeyGoesHere"

IP                   Domain
--                   ------
    "exampleip"       ["exampledomainname.com"]
 "anotherexampleip"   ["anotherexampledomain.com"]
```
