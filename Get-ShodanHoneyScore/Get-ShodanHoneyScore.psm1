<#PSScriptInfo

.VERSION 1.1.2

.GUID 33b11412-9732-4a8b-945a-691baa913c62

.AUTHOR SimeonOnSecurity

.COMPANYNAME SimeonOnSecurity

.COPYRIGHT 2020 SimeonOnSecurity. All rights reserved.

.TAGS Shodan PowerShell Modules ShodanPS cmdlet

.PROJECTURI https://simeononsecurity.com/github/shodan-powershell/

.DESCRIPTION "Calculates a honeypot probability score ranging from 0 (not a honeypot) to 1.0 (is a honeypot). Ex: Get-ShodanHoneyScore -IP 8.8.8.8 -API"

.RELEASENOTES
Init

#>
function Get-ShodanHoneyScore {
    param(
        [Parameter(Mandatory = $false, Position = 0)]
        [string]$api,
        [Parameter(Mandatory = $true, Position = 1)]
        [string]$ip
    )
    $apistring = "?key=$api"
    If (!$api) {
        Write-Output "Please set the 'api' variable to your shodan API key."
    }
    Else {
        If (!$ip) {
            Write-Output "Please specify an IP address with -IP [string]"
        }
        Else {
            (Invoke-WebRequest "https://api.shodan.io/labs/honeyscore/$ip$apistring").content | ConvertFrom-Json
        }
    }
}
