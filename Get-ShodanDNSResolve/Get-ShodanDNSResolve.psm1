<#PSScriptInfo

.VERSION 1.1.2

.GUID f7087ae2-07bf-4509-b04f-343cf1f28586

.AUTHOR SimeonOnSecurity

.COMPANYNAME SimeonOnSecurity

.COPYRIGHT 2020 SimeonOnSecurity. All rights reserved.

.TAGS Shodan PowerShell Modules ShodanPS cmdlet

.PROJECTURI https://simeononsecurity.com/github/shodan-powershell/

.DESCRIPTION "Look up the IP address for the provided list of hostnames. Ex: Get-ShodanDNSResolve -domains "google.com,bing.com" -API"

.RELEASENOTES
Init

#>
function Get-ShodanDNSResolve {
    param(
        [string]$api,
        [string]$domains
    )
    $apistring = "&key=$api"
    If (!$api) {
        Write-Output "Please set the 'api' variable to your shodan API key."
    }
    Else {
        If (!$domains) {
            Write-Output "Please specify one or more domain address with -domains [string]"
        }
        Else {
            (Invoke-WebRequest -UseBasicParsing "https://api.shodan.io/dns/resolve?hostnames=$domains$apistring").content | ConvertFrom-Json
        }
    }
}
