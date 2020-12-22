# Description
Check the progress of a previously submitted scan request. Ex: Get-ShodanScanID -ID [string] -API [string]

## Prerequisites
You will need to have downloaded and installed the script already. Please see [Downloading](https://github.com/simeononsecurity/Shodan_PS#Download) and [Installing](https://github.com/simeononsecurity/Shodan_PS#Install) for further instruction.

## Usage
Run the script by entering the module name then the ID parameter followed by the ID string in quotes.

Then comes the API parameter followed by the api key in quotes.

```
PS C:\WINDOWS\system32> Get-ShodanScanID -ID "ScanIdGoesHere" -API "ApiKeyGoesHere"

Data                     Value
----                     -----
"count"                      1
 "status"               "DONE"
 "id"       "ScanIdGoesHere"
 "created"      "2020-12-12T09


PS C:\WINDOWS\system32>
```
