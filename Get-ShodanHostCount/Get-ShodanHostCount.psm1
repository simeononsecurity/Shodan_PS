<#PSScriptInfo

.VERSION 1.1

.GUID 

.AUTHOR simeononsecurity.ch

.COMPANYNAME SimeonOnSecurity

.COPYRIGHT 2020 SimeonOnSecurity. All rights reserved.

.TAGS Shodan PowerShell Modules ShodanPS cmdlet

.PROJECTURI https://github.com/simeononsecurity/Shodan_PS

.DESCRIPTION "This method behaves identical to "/shodan/host/search" with the only difference that this method does not return any host results, it only returns the total number of results that matched the query and any facet information that was requested. As a result this method does not consume query credits. Ex: Get-ShodanHostCount -Query [string] -Facet [string] -Minify $true -API"

.RELEASENOTES
Init

#>
function Get-ShodanHostCount {
    param(
        [Parameter(Mandatory = $false, Position = 0)]
        [string]$api,
        [Parameter(Mandatory = $true, Position = 1)]
        [string]$query,
        [Parameter(Mandatory = $false, Position = 2)]
        [string]$facet,
        [Parameter(Mandatory = $false, Position = 3)]
        $minify
    )
    $apistring = "?key=$api"
    $querystring = "&query=$query"
    $minify = [System.Convert]::ToBoolean($minify)
    If ($minify -eq $true -or $minify -eq 1) {
        $minifystring = "&minify=true"
    }
    Else {
        Write-Output "You chose full output"
        $minifystring = "&minify=false"
    }
    If (!$facet) {
        Write-Output "You chose no facet"
        $facetstring = ""
    }
    Else {
        $facetstring = "&facets=$facet"
    }
    If (!$api) {
        Write-Output "Please set the 'api' variable to your shodan API key."
    }
    Else {
        If (!$query) {
            Write-Output "Please specify your query with -Query [string]"
        }
        Else {
            (Invoke-WebRequest "https://api.shodan.io/shodan/host/count$apistring$querystring$facetstring$minifystring").content | ConvertFrom-Json
        }
    }
}
