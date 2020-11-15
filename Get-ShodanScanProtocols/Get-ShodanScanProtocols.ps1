<#PSScriptInfo

.VERSION 1.0

.GUID 

.AUTHOR simeononsecurity.ch

.COMPANYNAME SimeonOnSecurity

.COPYRIGHT 2020 SimeonOnSecurity. All rights reserved.

.TAGS Shodan PowerShell Modules ShodanPS cmdlet

.PROJECTURI https://github.com/simeononsecurity/Shodan_PS

.DESCRIPTION "List all protocols that can be used when performing on-demand Internet scans via Shodan. Ex: Get-ShodanScanProtocols -API [string]"

.RELEASENOTES
Init

#>
function Get-ShodanScanProtocols {
param(
[Parameter(Mandatory=$false, Position=0)]
[string]$api
)
$apistring="?key=$api"
If (!$api){
    Write-Host "Please set the 'api' variable to your shodan API key."
}Else {
    (Invoke-WebRequest "https://api.shodan.io/shodan/protocols$apistring").content -Split {$_ -eq ',' -or $_ -eq '{' -or $_ -eq '}'} | ConvertFrom-String -Delimiter ":" -PropertyNames Protocol, Description
}
}