@{
    RootModule = 'Get-ShodanDNSReverse.psm1'
    ModuleVersion = '1.1.3'
    GUID = '0633912f-7228-4daa-9c4f-4d7413e93a2a'
    Author = 'SimeonOnSecurity'
    CompanyName = 'SimeonOnSecurity'
    Copyright = '2020 SimeonOnSecurity. All rights reserved.'
    Description = 'Look up the hostnames that have been defined for the given list of IP addresses. Ex: Get-ShodanDNSReverse -ips google.com,bing.com -API'
    PrivateData = @{
        PSData = @{
            Tags = 'Shodan', 'PowerShell', 'Modules', 'ShodanPS', 'cmdlet'
            ProjectUri = 'https://simeononsecurity.com/github/shodan-powershell/'
            ReleaseNotes = 'Init'
        }
    }
}
