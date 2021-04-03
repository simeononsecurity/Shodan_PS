<#PSScriptInfo

.VERSION 1.1

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
[string]$api,
[Parameter(Mandatory=$true, Position=1)]
[string]$id
)
$apistring="?key=$api"
If (!$api){
    Write-Output "Please set the 'api' variable to your shodan API key."
}Else {
    If (!$id){
        Write-Output "Please specify a Shodan Scan ID with -ID [string]"
    }Else {
        (Invoke-WebRequest "https://api.shodan.io/shodan/scan/$id$apistring").content | ConvertFrom-Json
    }
}
}
