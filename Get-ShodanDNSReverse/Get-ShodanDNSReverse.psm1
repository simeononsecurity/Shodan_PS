<#PSScriptInfo

.VERSION 1.1

.GUID 

.AUTHOR simeononsecurity.ch

.COMPANYNAME SimeonOnSecurity

.COPYRIGHT 2020 SimeonOnSecurity. All rights reserved.

.TAGS Shodan PowerShell Modules ShodanPS cmdlet

.PROJECTURI https://github.com/simeononsecurity/Shodan_PS

.DESCRIPTION "Look up the hostnames that have been defined for the given list of IP addresses. Ex: Get-ShodanDNSReverse -ips google.com,bing.com -API"

.RELEASENOTES
Init

#>
function Get-ShodanDNSReverse {
    param(
        [Parameter(Mandatory = $false, Position = 0)]
        [string]$api,
        [Parameter(Mandatory = $true, Position = 1)]
        [string]$ips
    )
    $apistring = "&key=$api"
    If (!$api) {
        Write-Output "Please set the 'api' variable to your shodan API key."
    }
    Else {
        If (!$ips) {
            Write-Output "Please specify ips addresses with -ips [string]"
        }
        Else {
            (Invoke-WebRequest -UseBasicParsing "https://api.shodan.io/dns/reverse?ips=$ips$apistring").content | ConvertFrom-Json
        }
    }
}
