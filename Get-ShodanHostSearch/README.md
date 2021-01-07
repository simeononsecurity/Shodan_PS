## Description

Search Shodan using the same query syntax as the website and use facets to get summary information for different properties. 

Ex: Get-ShodanHostSearch -Query [string] -Facet [string] -Minify $true -API

Where query is a Shodan search query that searches the database of banners in Shodan, using an additional option to provide filters inside the search query using a "filter:value" format.

Where facet is optional and is a comma-separated list of properties to get summary information on. 
Facet uses an additional option to provide filters inside the search query using a "property:value" format.
 


## Prerequisites
You will need to have downloaded and installed the script already. Please see [Downloading](https://github.com/simeononsecurity/Shodan_PS#Download) and [Installing](https://github.com/simeononsecurity/Shodan_PS#Install) for further instruction.

## Usage
Run the script by entering the module name with query parameter followed by the Query parameter with the search term in quotes.

Then (optionally) the Facet parameter follows the query parameter with the Property name(s) in property:value pair format separated by commas.

Following the Facet parameter is the Minify parameter which is set to $true.

The last parameter is mandandatory and is the API parameter followed by the api key in quotes.

Please see the shodan documentation for the full list of filters and facets [HERE.](https://developer.shodan.io/api)

```
PS C:\WINDOWS\system32> Get-ShodanHostSearch -Query "ssl" -Facet "ssl.cipher:TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256" -Minify $true -API "ApiKeyGoesHere"

Data             Value
----             -----
"matches"         [
"product"         "PostgreSQL"
 "hash"          examplevalue
 "tags"           ["database"]
 "ip"            examplevalue
 "isp"            "Unified Layer"
 "transport"      "tcp"
 "data"           "PostgreSQL\nFATAL
 "asn"            "examplevalue"
 "port"          5432
 "hostnames"      ["examplehostname"]
 "location"
"city"            null
 "region_code"    null
 "area_code"      null
 "longitude"     examplevalue
 "country_code3"  null
 "latitude"      examplevalue
 "postal_code"    null
 "dma_code"       null
 "country_code"   "US"
 "country_name"   "United States"
 "timestamp"      "2020-12-12T04
 "domains"        ["exampledomain.com"]
 "org"            "example org"
 "os"             null
 "_shodan"
 ... Output continues
 ```

To redirect the output to a file in your current path, simply add the right angle bracket to the end of the command followed by the name of the output file. 
```
PS C:\WINDOWS\system32> Get-ShodanHostSearch -Query "ssl" -Facet "ssl.cipher:TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256" -Minify $true -API "ApiKeyGoesHere" > output.txt
```

To learn more about redirection please read the [documentation.](https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_redirection?view=powershell-7.1#:~:text=Use%20the%20Out%2DFile%20cmdlet,sends%20it%20to%20the%20pipeline.)

