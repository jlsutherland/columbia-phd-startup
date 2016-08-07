1. install chocolatey

- use elevated command prompt

@powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin


2. install gui

3. use gui to install 

choco install -y chocolateygui
choco install -y r.project
choco install -y notepadplusplus.install
choco install -y git.install
choco install -y pandoc miktex r.studio
choco install -y jre8
# choco install -y github

https://chocolatey.org/packages for list of more packages

update miktex by going to all apps > miktex 2.9 > miktex update (admin), then follow the prompts to update your distribution.

when you press knit the first time, you will be asked to install backages

install.packages(c('knitr', 'rmarkdown'))
javareconf JAVA_CPPFLAGS=-I/System/Library/Frameworks/JavaVM.framework/Headers

- example of updating things
  - miktex has one way
  - R packages have their way
  - everything else is done thru chocolatey

