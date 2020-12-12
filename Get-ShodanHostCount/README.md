## Description
This method behaves identical to "/shodan/host/search" with the only difference that this method does not return any host results.
It only returns the total number of results that matched the query and any facet information that was requested. As a result this method does not consume query credits.

Ex: Get-ShodanHostCount -Query [string] -Facet [string] -Minify $true -API"

Where query is a Shodan search query that searches the database of banners in Shodan, using additional option to provide filters inside the search query using a "filter:value" format.

Where facet is optional and is a comma-separated list of properties to get summary information on. 
Facet uses additional option to provide filters inside the search query using a "property:value" format.
 

Both options


## Prerequisites
You will need to have downloaded and installed the script already. Please see [Downloading](https://github.com/simeononsecurity/Shodan_PS#Download) and [Installing](https://github.com/simeononsecurity/Shodan_PS#Install) for further instruction.

## Usage
Run the script by entering the module name with query parameter followed by the Query parameter with the search term in quotes.
Then (optionally) the Facet parameter follows the query parameter with the Property name(s) in property:value pair format seperated by commas.
The last parameter is mandandatory and is the API parameter followed by the api key in quotes.
Please see the shodan documentation for the full list of filters and facets [HERE.](https://developer.shodan.io/api)


```
PS C:\WINDOWS\system32> Get-ShodanHostCount -Query "ssl" -Facet "ssl.cipher:TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256" -Minify $true -API "ApiKeyGoesHere"
Data      Value
----      -----
"matches"  []
 "total"  4004313
```
