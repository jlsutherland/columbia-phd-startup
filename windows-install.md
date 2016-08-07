1. install

- use elevated command prompt, need directions
- run this command, which will start an interactive shell process

@powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/jlsutherland/columbia-phd-startup/master/startup-scripts/test.ps1'))"

2. update miktex
update miktex by going to all apps > miktex 2.9 > miktex update (admin), then follow the prompts to update your distribution.

3. configure R environment
- run these commands
install.packages(c('knitr', 'rmarkdown'))

- go to 
Tools > Global Options > Sweave
Under Program Defaults, for "Weak Rnw files using", select "knitr".
Click Apply.
Click Ok to exit.

https://chocolatey.org/packages for list of more packages

4. test to make sure you set everything up
Open R Studio.
Click new > Rmarkdown
Make sure you are in "Document" mode, rather than presenation or shiny
Enter a title
Enter an author
select PDF
click Ok

this will generate an rmarkdown template for you.
click ok

Click knit PDF (if you click the little dropdown arrow, click knit pdf again)
type in a filename and location
when you press knit the first time, you will be asked to install packages by miktex. This will happen 10 or so times. What is happening is knitr is asking latex to call packages that are not installed on your system. Let MikTeX run as power user (click yes on the popup) and then click yes for install. You won't have to do this again for these packages.

A PDF should pop up. If it doesn't, look in the file explorer in the bottom left-hand quadrant of the window and look for the file name.

If it worked, then you're all set!

5. Advanced options, for people who rock
Tools > Global Options > Appearance
Change your editor theme, because you look like a n00b if you use the default.
Click Apply.
Boom, you're awesome now.
Click ok to exit.

6. for later
- example of updating things
  - miktex has one way
  - R packages have their way
  - everything else is done thru chocolatey
