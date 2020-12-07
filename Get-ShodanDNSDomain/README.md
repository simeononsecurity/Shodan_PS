# Description
Get all the subdomains and other DNS entries for the given domain. Ex: Get-ShodanDNSdomain -domain google.com -API

**Note:** Depending on the domain the output can be very long, you may want to consider redirecting the response to a file for ease of use.
## Prerequisites
You will need to have downloaded and installed the script already. Please see [Downloading](https://github.com/makeitbetter/Shodan_PS#Download) and [Installing](https://github.com/makeitbetter/Shodan_PS#Install) for further instruction.

## Usage
Run the script by entering the module name with the domain parameter followed by the domain name and then the API parameter followed by the api key in quotes.

```
PS C:\WINDOWS\system32> Get-ShodanDNSdomain -domain exampledomain.com -API "ApiKeyGoesHere"

Data         Value
----         -----
"more"        true
 "domain"     "exampledomain.com"
 "tags"       ["ipv6"]
 "data"       [
"subdomain"   ""
 "type"       "MX"
 "value"      "subdomain.exampledomain.com"
 "last_seen"  "2020-12-02T16
"subdomain"   "anothersubdomain.exampledomain.com"
 "type"       "CNAME"
 "value"      "anothersubdomain.exampledomain.com"
 "last_seen"  "2020-12-05T12
"subdomain"   "yetanothersubdomain.exampledomain.com"
 "type"       "AAAA"
 "value"      "2607
 "last_seen"  "2020-11-25T08
 ...
```
To redirect the output to a file in your current path, simply add the right angle bracket to the end of the command followed by the name of the output file. 
```
PS C:\WINDOWS\system32> Get-ShodanDNSdomain -domain exampledomain.com -API "ApiKeyGoesHere" > output.txt
```

To learn more about redirection please read the [documentation.](https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_redirection?view=powershell-7.1#:~:text=Use%20the%20Out%2DFile%20cmdlet,sends%20it%20to%20the%20pipeline.)

