<#PSScriptInfo

.VERSION 1.1

.GUID 9944b93f-7cd5-42bc-abb6-bf4535f55559

.AUTHOR simeononsecurity.ch

.COMPANYNAME SimeonOnSecurity

.COPYRIGHT 2020 SimeonOnSecurity. All rights reserved.

.TAGS Shodan PowerShell Modules ShodanPS cmdlet

.PROJECTURI https://github.com/simeononsecurity/Shodan_PS

.DESCRIPTION "Get all the subdomains and other DNS entries for the given domain. Ex: Get-ShodanDNSdomain -domain google.com -API"

.RELEASENOTES
Init

#>
function Get-ShodanDNSdomain {
    param(
        [Parameter(Mandatory = $false, Position = 0)]
        [string]$api,
        [Parameter(Mandatory = $true, Position = 1)]
        [string]$domain
    )
    $apistring = "?key=$api"
    If (!$api) {
        Write-Output "Please set the 'api' variable to your shodan API key."
    }
    Else {
        If (!$domain) {
            Write-Output "Please specify an domain address with -domain [string]"
        }
        Else {
            (Invoke-WebRequest "https://api.shodan.io/dns/domain/$domain$apistring").content | ConvertFrom-Json
        }
    }
}
