@{
    RootModule = 'Get-ShodanHostIP.psm1'
    ModuleVersion = '1.1.3'
    GUID = 'c7c3ac3e-6029-4422-a02f-7c5abc3853a3'
    Author = 'SimeonOnSecurity'
    CompanyName = 'SimeonOnSecurity'
    Copyright = '2020 SimeonOnSecurity. All rights reserved.'
    Description = 'Search Shodan with IP address. Ex: Get-ShodanHostIP -IP 8.8.8.8 -Minify $true -API'
    PrivateData = @{
        PSData = @{
            Tags = 'Shodan', 'PowerShell', 'Modules', 'ShodanPS', 'cmdlet'
            ProjectUri = 'https://simeononsecurity.com/github/shodan-powershell/'
            ReleaseNotes = 'Init'
        }
    }
}
