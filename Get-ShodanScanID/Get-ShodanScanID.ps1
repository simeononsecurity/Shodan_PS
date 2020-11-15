<#PSScriptInfo

.VERSION 1.0

.GUID 

.AUTHOR simeononsecurity.ch

.COMPANYNAME SimeonOnSecurity

.COPYRIGHT 2020 SimeonOnSecurity. All rights reserved.

.TAGS Shodan PowerShell Modules ShodanPS cmdlet

.PROJECTURI https://github.com/simeononsecurity/Shodan_PS

.DESCRIPTION "Check the progress of a previously submitted scan request. Ex: Get-ShodanScanID -ID [string] -API [string]"

.RELEASENOTES
Init

#>
function Get-ShodanScanID {
param(
[Parameter(Mandatory=$false, Position=0)]
[string]$global:api,
[Parameter(Mandatory=$true, Position=1)]
[string]$id
)
$apistring="?key=$global:api"
If (!$global:api){
    Write-Host "Please set the 'api' variable to your shodan API key."
}Else {
    If (!$id){
        Write-Host "Please specify a Shodan Scan ID with -ID [string]"
    }Else {
        (Invoke-WebRequest "https://api.shodan.io/shodan/scan/$id$apistring").content -Split {$_ -eq ',' -or $_ -eq '{' -or $_ -eq '}'} | ConvertFrom-String -Delimiter ":" -PropertyNames Data, Value
    }
}
}