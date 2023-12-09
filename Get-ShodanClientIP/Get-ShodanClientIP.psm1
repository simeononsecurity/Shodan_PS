<#PSScriptInfo

.VERSION 1.1.2

.GUID d05620f4-2ee2-4c53-a646-69e136b275fe

.AUTHOR SimeonOnSecurity

.COMPANYNAME SimeonOnSecurity

.COPYRIGHT 2020 SimeonOnSecurity. All rights reserved.

.TAGS Shodan PowerShell Modules ShodanPS cmdlet

.PROJECTURI https://simeononsecurity.com/github/shodan-powershell/

.DESCRIPTION "Get your current IP address as seen from the Internet. Ex: Get-ShodanClientIP -API"

.RELEASENOTES
Init

#>
function Get-ShodanClientIP {
    param(
        [Parameter(Mandatory = $false, Position = 0)]
        [string]$api
    )
    $apistring = "?key=$api"
    If (!$api) {
        Write-Output "Please set the 'api' variable to your shodan API key."
    }
    Else {
        (Invoke-WebRequest "https://api.shodan.io/tools/myip$apistring").content | ConvertFrom-Json
    }
}
