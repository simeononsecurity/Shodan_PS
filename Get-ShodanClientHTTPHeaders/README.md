# Description
Shows the HTTP headers that your client sends when connecting to a webserver. Ex: Get-ShodanClientHTTPHeaders -API

## Prerequisites
You will need to have downloaded and installed the script already. Please see [Downloading](https://github.com/makeitbetter/Shodan_PS#Download) and [Installing](https://github.com/makeitbetter/Shodan_PS#Install) for further instruction.

## Usage
Run the script by entering the module name with with the API parameter followed by the api key in quotes.

```
PS C:\WINDOWS\system32> Get-ShodanClientHTTPHeaders -API "ApiKeyGoesHere"

Header               Value
------               -----
"Content-Length"      ""
 "Cf-Visitor"         "
\"scheme\"           \"https\"
 "Accept-Encoding"    "gzip"
 "X-Forwarded-For"    "2601
 "Host"               "api.shodan.io"
 "Cf-Request-Id"      "IdStringGoesHere"
 "User-Agent"         "Mozilla/5.0 (Windows NT; Windows NT 10.0; en-US) WindowsPowerShell/5.1.19041.610"
 "Connection"         "Keep-Alive"
 "X-Forwarded-Proto"  "https"
 "Cdn-Loop"           "cloudflare"
 "Cf-Connecting-Ip"   "2601
 "Cf-Ray"             "RayStringGoesHere"
 "Content-Type"       ""

```
