# Description
List all protocols that can be used when performing on-demand Internet scans via Shodan. Ex: Get-ShodanScanProtocols -API [string]

## Prerequisites
You will need to have downloaded and installed the script already. Please see [Downloading](https://github.com/simeononsecurity/Shodan_PS#Download) and [Installing](https://github.com/simeononsecurity/Shodan_PS#Install) for further instruction.

## Usage
Run the script by entering the module name followed by the API parameter followed by the api key in quotes.

```
PS C:\WINDOWS\system32> Get-ShodanScanProtocols -API "ApiKeyGoesHere"

Protocol                 Description
--------                 -----------
"afp"                     "AFP server information grabbing module"
 "ajp"                    "Check whether the Tomcat server running AJP protocol"
 "amqp"                   "Grab information from an AMQP service"
 "andromouse"             "Checks whether the device is running the remote mouse AndroMouse service."
 "apple-airport-admin"    "Check whether the device is an Apple AirPort administrative interface."
 "ard"                    "Query the Apple Remote Desktop service for information about the device"
 "auto"                   "Detect the type of service that runs on the port and send the appropriate request."
 "automated-tank-gauge"   "Get the tank inventory for a gasoline station."
 "bacnet"                 "Gets various information from a BACnet device."
 "beanstalk"              "Get general information about the Beanstalk daemon"
 "bgp"                    "Checks whether the device is running BGP."
 "bitcoin"                "Grabs information about a Bitcoin daemon
 "bittorrent-tracker"     "Check whether there is a BitTorrent tracker running."
...
```
