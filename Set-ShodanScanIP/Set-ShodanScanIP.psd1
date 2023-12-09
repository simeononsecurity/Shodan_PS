@{
    RootModule = 'Set-ShodanScanIP.psm1'
    ModuleVersion = '1.1.2'
    GUID = '1c824d4b-e63e-4745-b2bb-f98eab7211bd'
    Author = 'simeononsecurity.ch'
    CompanyName = 'SimeonOnSecurity'
    Copyright = '2020 SimeonOnSecurity. All rights reserved.'
    Description = 'Use this module to request Shodan to crawl a network. Ex: Set-ShodanScanIP -IPS 8.8.8.8/32 -API'
    PrivateData = @{
        PSData = @{
            Tags = 'Shodan', 'PowerShell', 'Modules', 'ShodanPS', 'cmdlet'
            ProjectUri = 'https://simeononsecurity.com/github/shodan-powershell/'
            ReleaseNotes = 'Init'
        }
    }
}
