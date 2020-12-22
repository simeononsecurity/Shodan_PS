## Description
Search Shodan with IP address. Ex: Get-ShodanHostIP -IP "8.8.8.8" -Minify $true -API "ApiKeyGoesHere"
## Prerequisites
You will need to have downloaded and installed the script already. Please see [Downloading](https://github.com/simeononsecurity/Shodan_PS#Download) and [Installing](https://github.com/simeononsecurity/Shodan_PS#Install) for further instruction.

## Usage
Run the script by entering the module name with the IP parameter followed by the IP address you want to search for in quotes.

Following the IP parameter is the Minify parameter which is set to $true, then the API parameter followed by the api key in quotes.

```
PS C:\WINDOWS\system32> Get-ShodanHostIP -IP "45.33.32.156" -Minify $true -API "ApiKeyGoesHere"
Data             Value
----             -----
"region_code"     "CA"
 "tags"           ["cloud"]
 "ip"            757145756
 "area_code"      null
 "domains"        ["nmap.org"]
 "hostnames"      ["scanme.nmap.org"]
 "postal_code"    null
 "dma_code"      807
 "country_code"   "US"
 "org"            "Linode"
 "data"           []
 "asn"            "AS63949"
 "city"           "Fremont"
 "latitude"      38
 "isp"            "Linode"
 "longitude"     -122
 "last_update"    "2020-12-11T14
 "country_code3"  null
 "vulns"          ["CVE-2014-0117"
 "country_name"   "United States"
 "ip_str"         "45.33.32.156"
 "os"             null
 "ports"          [80
 
 PS C:\WINDOWS\system32>
 ```
 
 
