Write-Host ""
Write-Host "#################################################################################"
Write-Host "#################################################################################"
Write-Host "##"
Write-Host "## Columbia PhD Start-up Kit"
Write-Host "## v0.1.0"
Write-Host "## Built August 7, 2016"
Write-Host "##"
Write-Host "## Author: Joe Sutherland <joseph.sutherland@columbia.edu>"
Write-Host "##         *Please feel free to contact for support*"
Write-Host "##"
Write-Host "## NOTE: You must run this script as a power user to install Chocolatey."
Write-Host "##      Open command prompt by right-clicking, then select 'Run as Administrator'"
Write-Host "##"
Write-Host "#################################################################################"
Write-Host "#################################################################################"
Write-Host ""
Write-Host ""
Write-Host "Hello, PhD student! I will install the following on to your system:"
Write-Host ""
Write-Host "  * Chocolatey -- a package manager for Windows"
Write-Host "  * Chocolatey GUI -- a graphical user interface for Chocolatey"
Write-Host "  * Notepad++ -- an open-source editor fluent in all languages"
Write-Host "  * R -- an open-source statistical computing platform"
Write-Host "  * git -- a versioning tool"
Write-Host "  * MiKTeX -- a TeX distribution for Windows, for writing beautiful papers"
Write-Host "  * TeXMaker -- a modern, cross-platform TeX editor"
Write-Host "  * R Studio -- a GUI for R, so you can easily pass your stat classes"
Write-Host "  * Pandoc -- a tool used by R Studio to convert between document formats"
Write-Host "  * Java 8 -- the latest Java distribution, required for some R packages"
Write-Host ""
Write-Host "Is it ok if I do this?"
Write-Host "[Y]es (will install) [N]o (will exit)"
Write-Host ""

$answer = Read-Host "Answer"

if ($answer -eq "N" -Or $answer -eq "n" -Or $answer -eq "No" -Or $answer -eq "no") {
        Write-Host ""
        Write-Host "Ok, I will not install anything. Exiting..."
        Write-Host ""
} elseif ($answer -eq "Y" -Or $answer -eq "y" -Or $answer -eq "Yes" -Or $answer -eq "yes") {
        Write-Host ""
        Write-Host "Ok, I will begin. Ready..."
        Write-Host "Please be patient, this installation can take several minutes..."
        Write-Host ""

        iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
        $env:Path += $env:ALLUSERSPROFILE + "\chocolatey\bin"

        iex "choco install chocolateygui notepadplusplus.install git.install r.project pandoc miktex r.studio jre8 texmaker"



        $IE=new-object -com internetexplorer.application
        $IE.navigate2("www.jlsutherland.com/phd-starter-kit")
        $IE.visible=$true

} else {
        Write-Host ""
        Write-Host "Your answer was unexpected. Please use [Y]es or [N]o next time. Exiting..."
        Write-Host ""
}
