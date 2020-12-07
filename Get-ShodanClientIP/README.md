# Description
Get your current IP address as seen from the Internet. Ex: Get-ShodanClientIP -API

This is the IP that the outside world sees you as; for example, if you are at home this would be your ISP provided modem's IP address.

**Note:** If your service provider supports IPV6, the IPV6 address will be prioritized instead of your public IPV4 address.

## Prerequisites
You will need to have downloaded and installed the script already. Please see [Downloading](https://github.com/makeitbetter/Shodan_PS#Download) and [Installing](https://github.com/makeitbetter/Shodan_PS#Install) for further instruction.

## Usage
Run the script by entering the module name with with the API parameter followed by the api key in quotes.
```
PS C:\WINDOWS\system32> Get-ShodanClientIP -"ApiKeyStringGoesHere"
PS C:\WINDOWS\system32>
"PublicIpAddressReturnedHere"
```
