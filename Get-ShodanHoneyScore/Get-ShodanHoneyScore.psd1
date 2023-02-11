@{
    RootModule = 'Get-ShodanHoneyScore.psm1'
    ModuleVersion = '1.1'
    GUID = '33b11412-9732-4a8b-945a-691baa913c62'
    Author = 'simeononsecurity.ch'
    CompanyName = 'SimeonOnSecurity'
    Copyright = '2020 SimeonOnSecurity. All rights reserved.'
    Description = 'Calculates a honeypot probability score ranging from 0 (not a honeypot) to 1.0 (is a honeypot). Ex: Get-ShodanHoneyScore -IP 8.8.8.8 -API'
    PrivateData = @{
        PSData = @{
            Tags = 'Shodan', 'PowerShell', 'Modules', 'ShodanPS', 'cmdlet'
            ProjectUri = 'https://github.com/simeononsecurity/Shodan_PS'
            ReleaseNotes = 'Init'
        }
    }
}
