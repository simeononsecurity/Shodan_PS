<#PSScriptInfo

.VERSION 1.1

.GUID 

.AUTHOR simeononsecurity.ch

.COMPANYNAME SimeonOnSecurity

.COPYRIGHT 2020 SimeonOnSecurity. All rights reserved.

.TAGS Shodan PowerShell Modules ShodanPS cmdlet

.PROJECTURI https://github.com/simeononsecurity/Shodan_PS

.DESCRIPTION "Shows the HTTP headers that your client sends when connecting to a webserver. Ex: Get-ShodanClientHTTPHeaders -API"

.RELEASENOTES
Init

#>
function Get-ShodanClientHTTPHeaders {
param(
[Parameter(Mandatory=$false, Position=0)]
[string]$api
)
$apistring="?key=$api"
If (!$api){
    Write-Output "Please set the 'api' variable to your shodan API key."
}Else {
        (Invoke-WebRequest "https://api.shodan.io/tools/httpheaders$apistring").content | ConvertFrom-Json
    }
}
