<#PSScriptInfo

.VERSION 1.0

.GUID 

.AUTHOR simeononsecurity.ch

.COMPANYNAME SimeonOnSecurity

.COPYRIGHT 2020 SimeonOnSecurity. All rights reserved.

.TAGS Shodan PowerShell Modules ShodanPS cmdlet

.PROJECTURI https://github.com/simeononsecurity/Shodan_PS

.DESCRIPTION "Look up the IP address for the provided list of hostnames. Ex: Get-ShodanDNSResolve -domains google.com,bing.com -API"

.RELEASENOTES
Init

#>
function Get-ShodanDNSResolve {
param(
[Parameter(Mandatory=$false, Position=0)]
[string]$api,
[Parameter(Mandatory=$true, Position=1)]
[string]$domains
)
$apistring="?key=$api"
If (!$api){
    Write-Host "Please set the 'api' variable to your shodan API key."
}Else {
    If (!$domains){
        Write-Host "Please specify an domain address with -domains [string]"
    }Else {
        (Invoke-WebRequest "https://api.shodan.io/dns/resolve?hostnames=$domains$apistring").content -Split {$_ -eq ',' -or $_ -eq '{' -or $_ -eq '}'} | ConvertFrom-String -Delimiter ":" -PropertyNames Domain, IP
    }
}
}
