@{
    RootModule = 'Get-ShodanHostSearch.psm1'
    ModuleVersion = '1.1'
    GUID = '23215e9c-7d12-41c1-8e23-65649edad166'
    Author = 'simeononsecurity.ch'
    CompanyName = 'SimeonOnSecurity'
    Copyright = '2020 SimeonOnSecurity. All rights reserved.'
    Description = 'Search Shodan using the same query syntax as the website and use facets to get summary information for different properties. Ex: Get-ShodanHostSearch -Query [string] -Facet [string] -Minify $true -API'
    PrivateData = @{
        PSData = @{
            Tags = 'Shodan', 'PowerShell', 'Modules', 'ShodanPS', 'cmdlet'
            ProjectUri = 'https://github.com/simeononsecurity/Shodan_PS'
            ReleaseNotes = 'Init'
        }
    }
}
