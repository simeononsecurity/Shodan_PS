# Description
Calculates a honeypot probability score ranging from 0 (not a honeypot) to 1.0 (is a honeypot). Ex: Get-ShodanHoneyScore -IP 8.8.8.8 -API

## Prerequisites
You will need to have downloaded and installed the script already. Please see [Downloading](https://github.com/makeitbetter/Shodan_PS#Download) and [Installing](https://github.com/makeitbetter/Shodan_PS#Install) for further instruction.

## Usage
Run the script by entering the module name with the IP parameter followed by the IP to scan in quotes, then the API parameter followed by the api key in quotes.

```
PS C:\WINDOWS\system32> Get-ShodanHoneyScore -IP "exampleipaddress" -API "ApiKeyGoesHere"
0.0
PS C:\WINDOWS\system32>
```
