@{
    RootModule = 'Get-ShodanScanProtocols.psm1'
    ModuleVersion = '1.1'
    GUID = '302aeb93-2701-4792-89a8-4fbfd3906a9d'
    Author = 'simeononsecurity.ch'
    CompanyName = 'SimeonOnSecurity'
    Copyright = '2020 SimeonOnSecurity. All rights reserved.'
    Description = 'List all protocols that can be used when performing on-demand Internet scans via Shodan. Ex: Get-ShodanScanProtocols -API [string]'
    PrivateData = @{
        PSData = @{
            Tags = 'Shodan', 'PowerShell', 'Modules', 'ShodanPS', 'cmdlet'
            ProjectUri = 'https://github.com/simeononsecurity/Shodan_PS'
            ReleaseNotes = 'Init'
        }
    }
}
