<#PSScriptInfo

.VERSION 1.1.2

.GUID 302aeb93-2701-4792-89a8-4fbfd3906a9d

.AUTHOR SimeonOnSecurity

.COMPANYNAME SimeonOnSecurity

.COPYRIGHT 2020 SimeonOnSecurity. All rights reserved.

.TAGS Shodan PowerShell Modules ShodanPS cmdlet

.PROJECTURI https://simeononsecurity.com/github/shodan-powershell/

.DESCRIPTION "List all protocols that can be used when performing on-demand Internet scans via Shodan. Ex: Get-ShodanScanProtocols -API [string]"

.RELEASENOTES
Init

#>
function Get-ShodanScanProtocols {
    param(
        [Parameter(Mandatory = $false, Position = 0)]
        [string]$api
    )
    $apistring = "?key=$api"
    If (!$api) {
        Write-Output "Please set the 'api' variable to your shodan API key."
    }
    Else {
        (Invoke-WebRequest "https://api.shodan.io/shodan/protocols$apistring").content | ConvertFrom-Json
    }
}
