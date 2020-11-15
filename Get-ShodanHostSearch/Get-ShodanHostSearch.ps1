<#PSScriptInfo

.VERSION 1.0

.GUID 

.AUTHOR simeononsecurity.ch

.COMPANYNAME SimeonOnSecurity

.COPYRIGHT 2020 SimeonOnSecurity. All rights reserved.

.TAGS Shodan PowerShell Modules ShodanPS cmdlet

.PROJECTURI https://github.com/simeononsecurity/Shodan_PS

.DESCRIPTION "Search Shodan using the same query syntax as the website and use facets to get summary information for different properties. Ex: Get-ShodanHostSearch -Query [string] -Facet [string] -Minify $true -API"

.RELEASENOTES
Init

#>
function Get-ShodanHostSearch {
param(
[Parameter(Mandatory=$false, Position=0)]
[string]$global:api,
[Parameter(Mandatory=$true, Position=1)]
[string]$query,
[Parameter(Mandatory=$false, Position=2)]
[string]$facet,
[Parameter(Mandatory=$false, Position=3)]
$minify
)
$apistring="?key=$global:api"
$querystring = "&query=$query"
$minify = [System.Convert]::ToBoolean($minify)
If ($minify -eq $true -or $minify -eq 1){
    $minifystring="&minify=true"
}Else{
    Write-Host "You chose full output"
    $minifystring="&minify=false"
}
If (!$facet){
    Write-Host "You chose no facet"
    $facetstring = ""
}Else{
    $facetstring = "&facet=$facet"
}
If (!$global:api){
    Write-Host "Please set the 'api' variable to your shodan API key."
}Else {
    If (!$query){
        Write-Host "Please specify your query with -Query [string]"
    }Else {
        (Invoke-WebRequest "https://api.shodan.io/shodan/host/search$apistring$querystring$facetstring$minifystring").content -Split {$_ -eq ',' -or $_ -eq '{' -or $_ -eq '}'} | ConvertFrom-String -Delimiter ":" -PropertyNames Data, Value
    }
}
}