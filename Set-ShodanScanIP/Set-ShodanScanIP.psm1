<#PSScriptInfo

.VERSION 1.1

.GUID 

.AUTHOR simeononsecurity.ch

.COMPANYNAME SimeonOnSecurity

.COPYRIGHT 2020 SimeonOnSecurity. All rights reserved.

.TAGS Shodan PowerShell Modules ShodanPS cmdlet

.PROJECTURI https://github.com/simeononsecurity/Shodan_PS

.DESCRIPTION "Use this module to request Shodan to crawl a network. Ex: Set-ShodanScanIP -IPS 8.8.8.8/32 -API"

.RELEASENOTES
Init

#>
function Set-ShodanScanIP {
param(
[Parameter(Mandatory=$false, Position=0)]
[string]$api,
[Parameter(Mandatory=$true, Position=1)]
[string]$ips
)
$apistring = "?key=$api"
If (!$api){
    Write-Output "Please set the 'api' variable to your shodan API key."
}Else {
    If (!$ips){
        Write-Output "Please specify IPs address(es) with -IPs [string]"
    }Else {
        $ipstring = "&ips=$ips"
        (Invoke-WebRequest -Method 'POST' "https://api.shodan.io/shodan/scan$apistring$ipstring").content | ConvertFrom-Json
    }
}
}
