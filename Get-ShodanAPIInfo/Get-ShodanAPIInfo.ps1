<#PSScriptInfo

.VERSION 1.0

.GUID 

.AUTHOR simeononsecurity.ch

.COMPANYNAME SimeonOnSecurity

.COPYRIGHT 2020 SimeonOnSecurity. All rights reserved.

.TAGS Shodan PowerShell Modules ShodanPS cmdlet

.PROJECTURI https://github.com/simeononsecurity/Shodan_PS

.DESCRIPTION "Returns information about the API plan belonging to the given API key. Ex: Get-ShodanAPIInfo -API"

.RELEASENOTES
Init

#>
function Get-ShodanAPIInfo {
param(
[Parameter(Mandatory=$false, Position=0)]
[string]$api
)
$apistring="?key=$api"
If (!$api){
    Write-Host "Please set the 'api' variable to your shodan API key."
}Else {
        (Invoke-WebRequest "https://api.shodan.io/api-info$apistring").content -Split {$_ -eq ',' -or $_ -eq '{' -or $_ -eq '}'} | ConvertFrom-String -Delimiter ":" -PropertyNames Data, Value
    }
}