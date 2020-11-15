<#PSScriptInfo

.VERSION 1.0

.GUID 

.AUTHOR simeononsecurity.ch

.COMPANYNAME SimeonOnSecurity

.COPYRIGHT 2020 SimeonOnSecurity. All rights reserved.

.TAGS Shodan PowerShell Modules ShodanPS cmdlet

.PROJECTURI https://github.com/simeononsecurity/Shodan_PS

.DESCRIPTION "This module returns a list of search filters that can be used in the search query. Ex: Get-ShodanHostSearchFacets -API"

.RELEASENOTES
Init

#>
function Get-ShodanHostSearchFacets {
param(
[Parameter(Mandatory=$false, Position=0)]
[string]$api
)
$apistring="?key=$api"
If (!$api){
    Write-Host "Please set the 'api' variable to your shodan API key."
}Else {
        (Invoke-WebRequest "https://api.shodan.io/shodan/host/search/facets$apistring").content -Split {$_ -eq ',' -or $_ -eq '[' -or $_ -eq ']'}
    }
}