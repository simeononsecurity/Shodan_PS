<#PSScriptInfo

.VERSION 1.1

.GUID 

.AUTHOR simeononsecurity.ch

.COMPANYNAME SimeonOnSecurity

.COPYRIGHT 2020 SimeonOnSecurity. All rights reserved.

.TAGS Shodan PowerShell Modules ShodanPS cmdlet

.PROJECTURI https://github.com/simeononsecurity/Shodan_PS

.DESCRIPTION "This module returns a list of search filters that can be used in the search query. Ex: Get-ShodanHostSearchFilter -API"

.RELEASENOTES
Init

#>
function Get-ShodanHostSearchFilters {
    param(
        [Parameter(Mandatory = $false, Position = 0)]
        [string]$api
    )
    $apistring = "?key=$api"
    If (!$api) {
        Write-Output "Please set the 'api' variable to your shodan API key."
    }
    Else {
        (Invoke-WebRequest "https://api.shodan.io/shodan/host/search/filters$apistring").content | ConvertFrom-Json
    }
}
