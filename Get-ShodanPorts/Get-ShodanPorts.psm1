<#PSScriptInfo

.VERSION 1.1

.GUID 14061b50-2169-4329-b8f4-bf2002c33950

.AUTHOR simeononsecurity.ch

.COMPANYNAME SimeonOnSecurity

.COPYRIGHT 2020 SimeonOnSecurity. All rights reserved.

.TAGS Shodan PowerShell Modules ShodanPS cmdlet

.PROJECTURI https://github.com/simeononsecurity/Shodan_PS

.DESCRIPTION "List all ports that Shodan is crawling on the Internet. Ex: Get-ShodanPorts -API"

.RELEASENOTES
Init

#>
function Get-ShodanPorts {
    param(
        [Parameter(Mandatory = $true, Position = 0)]
        [string]$api
    )
    $apistring = "?key=$api"
    If (!$api) {
        Write-Output "Please set the 'api' variable to your shodan API key."
    }
    Else {
        (Invoke-WebRequest "https://api.shodan.io/shodan/ports$apistring").content | ConvertFrom-Json
    }
}
