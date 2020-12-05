# Shodan_PS
A collection of PowerShell Modules for Interacting with the Shodan API

**Notes:**
- You'll need you Shodan API key, which can be found on your [Shodan Account](https://account.shodan.io/)
- Examples of the APIs used in the modules may be found on the [Shodan Developers Page](https://developer.shodan.io/api)

- Certain Modules may use scan or query credits Query Credits are used when you download data via the website, CLI or API (what these scripts do).
Since we are using the API it is important to note that query credits are deducted if:
   1. A search filter is used
   2. Page 2 or beyond is requested
   
   The credits renew at the start of the month and 1 credit lets you download 100 results.
   As for scan credits, 1 scan credit lets you scan 1 IP, and they also renew at the start of the month.
   Please view the Shodan Help Center [HERE](https://help.shodan.io/the-basics/credit-types-explained) for full details.

## Download
<a name="Download"></a>
* You will need to download or clone the scripts to your computer.
![On the project page click the code button which opens the dropdown menu containing clone, Open with Github Desktop, Download Zip. Select the copy icon next to the clone url](https://github.com/makeitbetter/Shodan_PS/blob/main/demo/download.gif)

You can use the Code dropdown menu on this repo page by scrolling up, or just copy and paste the following link:  [https://github.com/simeononsecurity/Shodan_PS.git](https://github.com/simeononsecurity/Shodan_PS.git)

![On the project page click the code button which opens the dropdown menu containing clone, Open with Github Desktop, Download Zip. Select Download Zip option](https://github.com/makeitbetter/Shodan_PS/blob/main/demo/downloadzip.gif)

For this example we will be cloning the repo within Git Bash, after clicking on the clipboard icon as seen above, we can type git clone and right click the Git Bash window to select paste from the dropdown menu:
```
exampleuser@exampleComputer MINGW64 ~/Documents/Github git clone https://github.com/simeononsecurity/Shodan_PS.git
```
For detailed instructions on cloning please view [the github documentation.](https://docs.github.com/en/free-pro-team@latest/github/creating-cloning-and-archiving-repositories/cloning-a-repository)

Once you have the files, you need to copy the files to C:\Program Files\WindowsPowerShell\Modules, doing this will prompt dialog saying that access is denied, click continue to finish copying the files to this location and then proceed to the installation instructions [here](#Install)

![Open file explorer path C:\Program Files\WindowsPowerShell\Modules , copy dialog says access is denied, click on continue to copy the files](https://github.com/makeitbetter/Shodan_PS/blob/main/demo/copyasadmin.png)


**OR**

You can use the Code dropdown menu on this repo page by scrolling up, or just click on the following link:
[https://github.com/simeononsecurity/Shodan_PS/archive/main.zip](https://github.com/simeononsecurity/Shodan_PS/archive/main.zip)
Unzip main.zip by right clicking on the file and selecting extract here from the dropdown menu.

Once you have the files, you need to copy the files to C:\Program Files\WindowsPowerShell\Modules, doing this will prompt dialog saying that access is denied, click continue to finish copying the files to this location and then proceed to the installation instructions [here](#Install)

![Open file explorer path C:\Program Files\WindowsPowerShell\Modules , copy dialog says access is denied, click on continue to copy the files](https://github.com/makeitbetter/Shodan_PS/blob/main/demo/copyasadmin.png)




# Install
<a name="Install"></a>


- Install all the modules
You will need to run a PowerShell window as administrator.

By right clicking the PowerShell icon on the Desktop and selecting Run as Administrator from the dropdown menu.

![Right click the powershell icon on the Desktop and select run as administrator from dropdown menu](https://github.com/makeitbetter/Shodan_PS/blob/main/demo/RcRunAsAdmin.gif)

**OR**

By typing p (or however many characters it takes PowerShell to show up) into the search bar and clicking on Run as Administrator.

![type p in the search bar and when powershell comes up click on run as administrator](https://github.com/makeitbetter/Shodan_PS/blob/main/demo/SearchBarRunAsAdmin.gif)


You will need to be in the directory that you copied the scripts to.
Run the following command to change your working directory:
```
PS C:\WINDOWS\system32> cd 'C:\Program Files\WindowsPowerShell\Modules\Shodan_PS'
PS C:\Program Files\WindowsPowerShell\Modules\Shodan_PS>
```
On Windows client computers we need to change the PowerShell execution policy which is Restricted by default.
 
For more information please read this [Microsoft documentation.](https:/go.microsoft.com/fwlink/?LinkID=135170)

Run the following command to set the policy to RemoteSigned and enter y to select that Yes you want to change the policy.
```
PS C:\Program Files\WindowsPowerShell\Modules\Shodan_PS> Set-ExecutionPolicy RemoteSigned

Execution Policy Change 
The execution policy helps protect you from scripts that you do not trust. Changing the execution policy might expose you to the
security risks described in the about_Execution_Policies help topic at https:/go.microsoft.com/fwlink/?LinkID=135170. Do you want to
change the execution policy?
[Y] Yes  [A] Yes to All  [N] No  [L] No to All  [S] Suspend  [?] Help (default is "N"): y
```
Once the execution policy has been changed, you can run the following command to Import the modules.

```
PS C:\Program Files\WindowsPowerShell\Modules\Shodan_PS> Set-ChildItem -Recurse *.psm1 | Import-Module
```
Now you can run any of the scripts as a module via powershell. For detailed instructions please see the table of contents below:
