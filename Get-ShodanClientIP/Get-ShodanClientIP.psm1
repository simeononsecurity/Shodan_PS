<#PSScriptInfo

.VERSION 1.1

.GUID 

.AUTHOR simeononsecurity.ch

.COMPANYNAME SimeonOnSecurity

.COPYRIGHT 2020 SimeonOnSecurity. All rights reserved.

.TAGS Shodan PowerShell Modules ShodanPS cmdlet

.PROJECTURI https://github.com/simeononsecurity/Shodan_PS

.DESCRIPTION "Get your current IP address as seen from the Internet. Ex: Get-ShodanClientIP -API"

.RELEASENOTES
Init

#>
function Get-ShodanClientIP {
    param(
        [Parameter(Mandatory = $false, Position = 0)]
        [string]$api
    )
    $apistring = "?key=$api"
    If (!$api) {
        Write-Output "Please set the 'api' variable to your shodan API key."
    }
    Else {
        (Invoke-WebRequest "https://api.shodan.io/tools/myip$apistring").content | ConvertFrom-Json
    }
}
