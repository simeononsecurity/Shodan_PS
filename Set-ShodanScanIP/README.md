
# Description
Use this module to request Shodan to crawl a network. Ex: Set-ShodanScanIP -IPS 8.8.8.8/32 -API

## Prerequisites
You will need to have downloaded and installed the script already. Please see [Downloading](https://github.com/simeononsecurity/Shodan_PS#Download) and [Installing](https://github.com/simeononsecurity/Shodan_PS#Install) for further instruction.

## Usage
Run the script by entering the module name then the IPS parameter which can be followed by comma separated IP addresses or CIDR notation netblocks.

Following the IPS parameter is the API parameter followed by the api key in quotes

```
PS C:\WINDOWS\system32> Set-ShodanScanIP -ips "IPaddrGoesHere" -API "ApiKeyGoesHere"

StatusCode        : 200
StatusDescription : OK
Content           : {"count": 1, "id": "ScanIdGoesHere", "credits_left": 100}
RawContent        : HTTP/1.1 200 OK
                    Transfer-Encoding: chunked
                    Connection: keep-alive
                    Vary: Accept-Encoding
                    Access-Control-Allow-Origin: *
                    X-Frame-Options: DENY
                    X-Content-Type-Options: nosniff
                    X-XSS-Protection: 1;...
Forms             : {}
Headers           : {[Transfer-Encoding, chunked], [Connection, keep-alive], [Vary, Accept-Encoding],
                    [Access-Control-Allow-Origin, *]...}
Images            : {}
InputFields       : {}
Links             : {}
ParsedHtml        : System.__ComObject
RawContentLength  : 59


```


