<#PSScriptInfo

.VERSION 1.0

.GUID 

.AUTHOR simeononsecurity.ch

.COMPANYNAME SimeonOnSecurity

.COPYRIGHT 2020 SimeonOnSecurity. All rights reserved.

.TAGS Shodan PowerShell Modules ShodanPS cmdlet

.PROJECTURI https://github.com/simeononsecurity/Shodan_PS

.DESCRIPTION "Calculates a honeypot probability score ranging from 0 (not a honeypot) to 1.0 (is a honeypot). Ex: Get-ShodanHoneyScore -IP 8.8.8.8 -API"

.RELEASENOTES
Init

#>
function Get-ShodanHoneyScore {
param(
[Parameter(Mandatory=$false, Position=0)]
[string]$global:api,
[Parameter(Mandatory=$true, Position=1)]
[string]$ip
)
$apistring="?key=$global:api"
If (!$global:api){
    Write-Host "Please set the 'api' variable to your shodan API key."
}Else {
    If (!$ip){
        Write-Host "Please specify an IP address with -IP [string]"
    }Else {
        (Invoke-WebRequest "https://api.shodan.io/labs/honeyscore/$ip$apistring").content -Split {$_ -eq ',' -or $_ -eq '{' -or $_ -eq '}'}
    }
}
}