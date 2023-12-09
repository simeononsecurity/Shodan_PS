<#PSScriptInfo

.VERSION 1.1.2

.GUID 32223d4d-69ae-4356-a3bc-e2d93d34f5d6

.AUTHOR SimeonOnSecurity

.COMPANYNAME SimeonOnSecurity

.COPYRIGHT 2020 SimeonOnSecurity. All rights reserved.

.TAGS Shodan PowerShell Modules ShodanPS cmdlet

.PROJECTURI https://simeononsecurity.com/github/shodan-powershell/

.DESCRIPTION "This module returns a list of search filters that can be used in the search query. Ex: Get-ShodanHostSearchFacets -API"

.RELEASENOTES
Init

#>
function Get-ShodanHostSearchFacets {
    param(
        [Parameter(Mandatory = $false, Position = 0)]
        [string]$api
    )
    $apistring = "?key=$api"
    If (!$api) {
        Write-Output "Please set the 'api' variable to your shodan API key."
    }
    Else {
        (Invoke-WebRequest "https://api.shodan.io/shodan/host/search/facets$apistring").content | ConvertFrom-Json
    }
}
