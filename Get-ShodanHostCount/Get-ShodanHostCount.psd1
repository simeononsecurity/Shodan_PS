@{
    RootModule = 'Get-ShodanHostCount.psm1'
    ModuleVersion = '1.1.2'
    GUID = '1bd66607-cb01-43e1-b447-857245506eef'
    Author = 'simeononsecurity.ch'
    CompanyName = 'SimeonOnSecurity'
    Copyright = '2020 SimeonOnSecurity. All rights reserved.'
    Description = 'This method behaves identical to "/shodan/host/search" with the only difference that this method does not return any host results, it only returns the total number of results that matched the query and any facet information that was requested. As a result this method does not consume query credits. Ex: Get-ShodanHostCount -Query [string] -Facet [string] -Minify $true -API'
    PrivateData = @{
        PSData = @{
            Tags = 'Shodan', 'PowerShell', 'Modules', 'ShodanPS', 'cmdlet'
            ProjectUri = 'https://simeononsecurity.com/github/shodan-powershell/'
            ReleaseNotes = 'Init'
        }
    }
}
