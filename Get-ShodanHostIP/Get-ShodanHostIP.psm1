<#PSScriptInfo

.VERSION 1.1

.GUID c7c3ac3e-6029-4422-a02f-7c5abc3853a3

.AUTHOR simeononsecurity.ch

.COMPANYNAME SimeonOnSecurity

.COPYRIGHT 2020 SimeonOnSecurity. All rights reserved.

.TAGS Shodan PowerShell Modules ShodanPS cmdlet

.PROJECTURI https://github.com/simeononsecurity/Shodan_PS

.DESCRIPTION "Search Shodan with IP address. Ex: Get-ShodanHostIP -IP 8.8.8.8 -Minify $true -API"

.RELEASENOTES
Init

#>
function Get-ShodanHostIP {
    param(
        [Parameter(Mandatory = $false, Position = 0)]
        [string]$api,
        [Parameter(Mandatory = $true, Position = 1)]
        [string]$ip,
        [Parameter(Mandatory = $false, Position = 2)]
        $minify
    )
    $apistring = "?key=$api"
    $minify = [System.Convert]::ToBoolean($minify)
    If ($minify -eq $true -or $minify -eq 1) {
        $minifystring = "&minify=true"
    }
    Else {
        Write-Output "You chose full output"
        $minifystring = ""
    }
    If (!$api) {
        Write-Output "Please set the 'api' variable to your shodan API key."
    }
    Else {
        If (!$ip) {
            Write-Output "Please specify an IP address with -IP [string]"
        }
        Else {
            (Invoke-WebRequest "https://api.shodan.io/shodan/host/$ip$apistring$minifystring").content | ConvertFrom-Json
        }
    }
}
