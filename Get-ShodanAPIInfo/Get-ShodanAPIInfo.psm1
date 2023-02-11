<#PSScriptInfo

.VERSION 1.1

.GUID 73c8593a-5531-4433-9733-d56cbc4c5a77

.AUTHOR simeononsecurity.ch

.COMPANYNAME SimeonOnSecurity

.COPYRIGHT 2020 SimeonOnSecurity. All rights reserved.

.TAGS Shodan PowerShell Modules ShodanPS cmdlet

.PROJECTURI https://github.com/simeononsecurity/Shodan_PS

.DESCRIPTION "Returns information about the API plan belonging to the given API key. Ex: Get-ShodanAPIInfo -API"

.RELEASENOTES
Init

#>
function Get-ShodanAPIInfo {
    param(
        [Parameter(Mandatory = $false, Position = 0)]
        [string]$api
    )
    $apistring = "?key=$api"
    If (!$api) {
        Write-Output "Please set the 'api' variable to your shodan API key."
    }
    Else {
        (Invoke-WebRequest "https://api.shodan.io/api-info$apistring").content | ConvertFrom-Json
    }
}
