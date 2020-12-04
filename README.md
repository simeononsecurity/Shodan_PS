# Shodan_PS
A collection of PowerShell Modules for Interacting with the Shodan API

**Notes:**
- You'll need you Shodan API key, which can be found on your [Shodan Account](https://account.shodan.io/)
- Examples of the APIs used in the modules may be found on the [Shodan Developers Page](https://developer.shodan.io/api)

Certain Modules may use scan or query credits
Query Credits are used when you download data via the website, CLI or API (what these scripts do).

Since we are using the API it is important to note that query credits are deducted if:
   1. A search filter is used
   2. Page 2 or beyond is requested
   
The credits renew at the start of the month and 1 credit lets you download 100 results.

As for scan credits, 1 scan credit lets you scan 1 IP, and they also renew at the start of the month.

Please view the Shodan Help Center [HERE](https://help.shodan.io/the-basics/credit-types-explained) for full details.

## Download and Install
- Download the modules from the [GitHub Repository](https://github.com/simeononsecurity/Shodan_PS)
- Install all the modules
```ps
Get-ChildItem -Recurse *.ps1 | Import-Module
```
