# Description
Get your current IP address as seen from the Internet. Ex: Get-ShodanClientIP -API

This is the IP that the outside world sees you as; for example, if you are at home this would be your ISP provided modem's IP address.

**Note:** If your service provider supports IPV6, the IPV6 address will be prioritized instead of your public IPV4 address.

## Prerequisites
* You will have needed to have downloaded or cloned the scripts to your computer.

* You will need to run a PowerShell window as administrator.

By right clicking the PowerShell icon on the Desktop and selecting Run as Administrator from dropdown menu.

![Right click the powershell icon on the Desktop and select run as administrator from dropdown menu](https://github.com/makeitbetter/Shodan_PS/blob/main/demo/RcRunAsAdmin.gif)

**OR**

By typing p (or however many characters it takes PowerShell to show up) into the searchbar and clicking on Run as Administrator.

![type p in the search bar and when powershell comes up click on run as administrator](https://github.com/makeitbetter/Shodan_PS/blob/main/demo/SearchBarRunAsAdmin.gif)


* You will need to be in the directory that you downloaded the scripts to. 

In my case, I cloned into the repo, so running the cd command as follows gets me into the correct directory.

```
PS C:\WINDOWS\system32> cd C:\Users\exampleuser\Documents\GitHub\Shodan_PS>
PS C:\Users\exampleuser\Documents\GitHub\Shodan_PS>

```

## Useage

**Step 1.** (If you are on a Windows server you can skip ahead to the next step)

On Windows client computers we need to change the PowerShell execution policy which is Restricted by default.
 
For more information please read this [Microsoft documentation.](https:/go.microsoft.com/fwlink/?LinkID=135170)

Run the following command to set the policy to RemoteSigned and enter y to select that Yes you want to change the policy.
```
PS C:\Users\exampleuser\Documents\GitHub\Shodan_PS> Set-ExecutionPolicy RemoteSigned

Execution Policy Change 
The execution policy helps protect you from scripts that you do not trust. Changing the execution policy might expose you to the
security risks described in the about_Execution_Policies help topic at https:/go.microsoft.com/fwlink/?LinkID=135170. Do you want to
change the execution policy?
[Y] Yes  [A] Yes to All  [N] No  [L] No to All  [S] Suspend  [?] Help (default is "N"): y
```
**Step 2.** Once the execution policy has been changed, you can run the following command to get all the powershell scripts and import
them into the current powershell session.

This means you will be able to run the scripts no matter where you are in the filesystem as long as you don't close the current powershell window.
```
PS C:\Users\exampleuser\Documents\GitHub\Shodan_PS> Get-ChildItem -Recurse *.ps1 | Import-Module
PS C:\Users\exampleuser\Documents\GitHub\Shodan_PS>
```
**Step 3.** Copy your api key from your [shodan account](https://account.shodan.io/) (it is the string over the QR code)

**Step 4.** Run the script by entering the module name with a dash - and the api key in quotes
```
PS C:\Users\exampleuser\Documents\GitHub\Shodan_PS> Get-ShodanClientIP -"ApiKeyStringGoesHere"
PS C:\Users\exampleuser\Documents\GitHub\Shodan_PS>
"PublicIpAddressReturnedHere"
```

**Step 5.** Cleanup (optional)
Since you have now made some changes that could potentially be a security issue, here's how to clean up after running the command.

While PowerShell only saves history for the current session, if you are worried about your api being exposed you can go into your [shodan account](https://account.shodan.io/) and hit the reset API key to take care of this.

In step 2 you changed your PowerShell execution policy in a way that would let potentialy malicious PowerShell scripts to execute. Run the following command to set the policy back to
the default of Restricted and enter y to select that Yes you want to change the policy.
```
PS C:\Users\exampleuser\Documents\GitHub\Shodan_PS> Set-ExecutionPolicy Restricted

Execution Policy Change 
The execution policy helps protect you from scripts that you do not trust. Changing the execution policy might expose you to the
security risks described in the about_Execution_Policies help topic at https:/go.microsoft.com/fwlink/?LinkID=135170. Do you want to
change the execution policy?
[Y] Yes  [A] Yes to All  [N] No  [L] No to All  [S] Suspend  [?] Help (default is "N"): y
```
**Note:** You will still be able to run the scripts as long as you keep this powershell window open since you already imported the modules.
