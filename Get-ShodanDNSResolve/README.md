# Description
Look up the IP addresses for the provided hostname(s). Ex: Get-ShodanDNSResolve -domains "google.com,bing.com" -API"



## Prerequisites
* You will have needed to have downloaded or cloned the scripts to your computer.
![On the project page click the code button which opens the dropdown menu containing clone, Open with Github Desktop, Download Zip](https://github.com/makeitbetter/Shodan_PS/blob/main/demo/download.gif)

For this example we will be cloning the repo within Git Bash, after clicking on the clipboard icon as seen above, we can type git clone and right click the Git Bash window to select paste from the dropdown menu:
```
exampleuser@exampleComputer MINGW64 ~/Documents/Github git clone https://github.com/simeononsecurity/Shodan_PS.git
```
For detailed instructions on cloning please view [the github documentation.](https://docs.github.com/en/free-pro-team@latest/github/creating-cloning-and-archiving-repositories/cloning-a-repository)

* You will need to run a PowerShell window as administrator.

By right clicking the PowerShell icon on the Desktop and selecting Run as Administrator from the dropdown menu.

![Right click the powershell icon on the Desktop and select run as administrator from dropdown menu](https://github.com/makeitbetter/Shodan_PS/blob/main/demo/RcRunAsAdmin.gif)

**OR**

By typing p (or however many characters it takes PowerShell to show up) into the search bar and clicking on Run as Administrator.

![type p in the search bar and when powershell comes up click on run as administrator](https://github.com/makeitbetter/Shodan_PS/blob/main/demo/SearchBarRunAsAdmin.gif)


* You will need to be in the directory that you downloaded the scripts to. 

In my case, I cloned into the repo, so running the cd command as follows gets me into the correct directory.

```
PS C:\WINDOWS\system32> cd C:\Users\exampleuser\Documents\GitHub\Shodan_PS>
PS C:\Users\exampleuser\Documents\GitHub\Shodan_PS>

```
## Usage

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

**Step 4.** Run the script by entering the module name with the domains and api parameters both in quotes as seen below:
``` 
PS C:\Users\exampleuser\Documents\GitHub\Shodan_PS>  Get-ShodanDNSResolve -domains "google.com,bing.com,yahoo.com"  -API "ApiKeyStringGoesHere"
PS C:\Users\exampleuser\Documents\GitHub\Shodan_PS>
Domain     : "yahoo.com"
IP         :  "98.137.11.164"
RunspaceId : "RunspaceIDreturnedHere"

Domain     :  "google.com"
IP         :  "142.250.64.110"
RunspaceId : "RunspaceIDreturnedHere"

Domain     :  "bing.com"
IP         :  "204.79.197.200"
RunspaceId : "RunspaceIDreturnedHere"
```

**Step 5.** Cleanup (optional)
Since you have now made some changes that could potentially be a security issue, here's how to clean up after running the command.

In step 2 you changed your PowerShell execution policy in a way that would let potentially malicious PowerShell scripts to execute. Run the following command to set the policy back to
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


