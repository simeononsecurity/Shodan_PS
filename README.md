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

## Download and Install
* You will need to download or clone the scripts to your computer.
![On the project page click the code button which opens the dropdown menu containing clone, Open with Github Desktop, Download Zip. Select the copy icone next to the clone url](https://github.com/makeitbetter/Shodan_PS/blob/main/demo/download.gif)

You can use the Code dropdown menu on the this repo page by scrolling up, or just copy and paste the following link:  [https://github.com/simeononsecurity/Shodan_PS.git](https://github.com/simeononsecurity/Shodan_PS.git)
![On the project page click the code button which opens the dropdown menu containing clone, Open with Github Desktop, Download Zip. Select the Download Zip option]
(https://github.com/makeitbetter/Shodan_PS/blob/main/demo/downloadzip.gif)

You can use the Code dropdown menu on the his repo page by scrolling up, or just click on the following link:
Download [https://github.com/simeononsecurity/Shodan_PS/archive/main.zip](https://github.com/simeononsecurity/Shodan_PS/archive/main.zip)



For this example we will be cloning the repo within Git Bash, after clicking on the clipboard icon as seen above, we can type git clone and right click the Git Bash window to select paste from the dropdown menu:
```
exampleuser@exampleComputer MINGW64 ~/Documents/Github git clone https://github.com/simeononsecurity/Shodan_PS.git
```
For detailed instructions on cloning please view [the github documentation.](https://docs.github.com/en/free-pro-team@latest/github/creating-cloning-and-archiving-repositories/cloning-a-repository)

- Download the modules from the [GitHub Repository](https://github.com/simeononsecurity/Shodan_PS)
- Install all the modules
```ps
Get-ChildItem -Recurse *.ps1 | Import-Module
```
