# Description
Returns information about the Shodan account linked to this API key. Ex: Get-ShodanProfile -API

## Prerequisites
You will need to have downloaded and installed the script already. Please see [Downloading](https://github.com/simeononsecurity/Shodan_PS#Download) and [Installing](https://github.com/simeononsecurity/Shodan_PS#Install) for further instruction.

## Usage
Run the script by entering the module name followed by the API parameter followed by the api key in quotes

```
PS C:\WINDOWS\system32> Get-ShodanProfile -API "ApiKeyGoesHere"

Data            Value
----            -----
"member"         true
 "credits"      20
 "display_name"  null
 "created"       "2019-11-23T19


PS C:\WINDOWS\system32>
```
