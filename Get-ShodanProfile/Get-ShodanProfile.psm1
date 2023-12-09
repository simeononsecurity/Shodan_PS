<#PSScriptInfo

.VERSION 1.1.2

.GUID 29a967a9-22fa-4fdf-9f7f-4c61adc5e2b1

.AUTHOR SimeonOnSecurity

.COMPANYNAME SimeonOnSecurity

.COPYRIGHT 2020 SimeonOnSecurity. All rights reserved.

.TAGS Shodan PowerShell Modules ShodanPS cmdlet

.PROJECTURI https://simeononsecurity.com/github/shodan-powershell/

.DESCRIPTION "Returns information about the Shodan account linked to this API key. Ex: Get-ShodanProfile -API"

.RELEASENOTES
Init

#>
function Get-ShodanProfile {
    param(
        [Parameter(Mandatory = $false, Position = 0)]
        [string]$api
    )
    $apistring = "?key=$api"
    If (!$api) {
        Write-Output "Please set the 'api' variable to your shodan API key."
    }
    Else {
        (Invoke-WebRequest "https://api.shodan.io/account/profile$apistring").content | ConvertFrom-Json
    }
}
