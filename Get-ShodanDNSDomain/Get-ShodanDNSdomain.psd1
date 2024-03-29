@{
    RootModule = 'Get-ShodanDNSdomain.psm1'
    ModuleVersion = '1.1.3'
    GUID = '9944b93f-7cd5-42bc-abb6-bf4535f55559'
    Author = 'SimeonOnSecurity'
    CompanyName = 'SimeonOnSecurity'
    Copyright = '2020 SimeonOnSecurity. All rights reserved.'
    Description = 'Get all the subdomains and other DNS entries for the given domain. Ex: Get-ShodanDNSdomain -domain google.com -API'
    PrivateData = @{
        PSData = @{
            Tags = 'Shodan', 'PowerShell', 'Modules', 'ShodanPS', 'cmdlet'
            ProjectUri = 'https://simeononsecurity.com/github/shodan-powershell/'
            ReleaseNotes = 'Init'
        }
    }
}
