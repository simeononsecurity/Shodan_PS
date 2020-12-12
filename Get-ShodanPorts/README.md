

# Description
List all ports that Shodan is crawling on the Internet. Ex: Get-ShodanPorts -API

## Prerequisites
You will need to have downloaded and installed the script already. Please see [Downloading](https://github.com/simeononsecurity/Shodan_PS#Download) and [Installing](https://github.com/simeononsecurity/Shodan_PS#Install) for further instruction.

## Usage
Run the script by entering the module name followed by the API parameter followed by the api key in quotes
```
PS C:\WINDOWS\system32> Get-ShodanPorts -API "ApiKeyGoesHere"


P1    : 7
P2    : 11
P3    : 13
P4    : 15
P5    : 17
P6    : 19
P7    : 20
P8    : 21
P9    : 22
P10   : 23
P11   : 24
P12   : 25
P13   : 26
P14   : 37
... Output continues
```

To redirect the output to a file in your current path, simply add the right angle bracket to the end of the command followed by the name of the output file. 
```
PS C:\WINDOWS\system32>Get-ShodanPorts -API "ApiKeyGoesHere" > output.txt
```

To learn more about redirection please read the [documentation.](https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_redirection?view=powershell-7.1#:~:text=Use%20the%20Out%2DFile%20cmdlet,sends%20it%20to%20the%20pipeline.)
