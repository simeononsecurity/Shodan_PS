<#PSScriptInfo

.VERSION 1.0

.GUID 

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
[Parameter(Mandatory=$true, Position=0)]
[string]$global:api
)
$apistring="?key=$global:api"
If (!$global:api){
    Write-Host "Please set the 'api' variable to your shodan API key."
}Else {
    (Invoke-WebRequest "https://api.shodan.io/shodan/ports$apistring").content -Split {$_ -eq '[' -or $_ -eq ']'} | ConvertFrom-String -Delimiter "," 
    }
}
