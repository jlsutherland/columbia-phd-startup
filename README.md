# The Ph.D. Starter Kit

The purpose of the starter kit is to install the software that is commonly used in your courses (and, more generally, the profession). It is _not_ to give you a familiarity with those tools---that's what the workshop is for! But I hope that these instructions will get you up and running with the software you need so we use our workshop time together exploring how to use these tools.

The workshop will give you a familiarity with the software, which I then hope will set you up to explore these software packages in greater depth. At the conclusion of the workshop, I will distribute materials that will help you to accomplish that exploration.

If you run into issues while working through this tutorial, stop and send me an email at `joseph.sutherland@columbia.edu`. We have some time to debug things at the beginning of the workshop.

## Starter kit: the contents

I designed the starter kit to get you up and running in less than ten minutes (give or take download time). The starter kit installs on your system:

* [Homebrew](http://brew.sh/) or [Chocolatey](https://chocolatey.org/) -- The command-line package manager for your system...you will fall in _love_!
* [Choco GUI](https://chocolatey.org/packages/ChocolateyGUI) or [Cakebrew](https://www.cakebrew.com/) -- A GUI for the package manager, depending on OS
* [Notepad++](https://notepad-plus-plus.org/) or [TextMate2](http://macromates.com/) -- text editors fluent in all languages
* [R](https://www.r-project.org/) -- an open-source statistical computing platform
* [TeX](https://www.latex-project.org/) -- a TeX distribution for your OS, for writing beautiful papers
* [TeXMaker](http://www.xm1math.net/texmaker/) -- a modern, cross-platform TeX editor
* [R Studio](https://www.rstudio.com/) -- a GUI for R, so you can easily pass your stat classes
* [Pandoc](http://pandoc.org/) -- a tool used by R Studio to convert between document formats
* [Java 8](https://java.com/en/download/) -- the latest Java distribution, required for some R packages
* [git](https://git-scm.com/) -- a versioning tool

## Why do I need this?
The tools installed by the starter kit comprise the minimal set of things you will need to complete your course responsibilities and author papers at Columbia. To perform to _your own standards_ in the PhD program, you will probably need at least a working knowledge of what these tools are and how to use them... I have yet to meet a recent grad who doesn't!

These tools are just tools---substantive research should be are the forefront of your consciousness! These tools, though somewhat hard to learn at first, will make _doing that research and collaborating with other scholars_ much easier.

## How do I get it?

It's easy to use the starter kit. And I promise, you'll feel pretty cool getting to use the Terminal for a second, sort of like a hacker.

If you're interested in installing the Ph.D. starter kit, then follow the instructions below or visit the [blog post](https://jlsutherland.com/columbia-phd-startup).

# Installation

### MacOS

If you are running MacOS on a MacBook, MacBook Pro, or comparable Apple product, then follow the following instructions to get the starter kit install.

#### 1. Uninstall existing apps

First, uninstall any of the applications listed above if they already exist on your system.

#### 2. Open Terminal

Second, open the application called `Terminal`, located at `Applications/Utilities/Terminal`. You can also open the app by calling the search bar with `command-space` and typing `Terminal`.

#### 3. Ensure Xcode tools are installed

Third, copy and paste the following commands into your terminal. After pasting, press enter. The commands should cause some output to print to the terminal screen. In particular, the first command summons a popup that will ask you (if you haven't already) to install some tools onto your computer.

``` bash
# To get homebrew, need xcode cli tools.
xcode-select --install
```

Accept the popup's offer to install the software, and then wait. This popup installs some command-line tools that your computer will use to run Homebrew, our package manager, and other functions within R Studio.

#### 4. Run the installation script

After you have successfully installed the xcode cli tools with the above command, run the following:

``` bash
# Run this after xcode-select --install is finished.
curl -s https://raw.githubusercontent.com/jlsutherland/columbia-phd-startup/master/startup-scripts/macos.sh | bash
```

This command calls the initialization script to install the programs we want. The script sleeps for 30 seconds to ensure you are prepared. If you are prepared, then let the 30 seconds time out and the process will begin. If you are not prepared, then hit `Ctrl-C` (press `Ctrl` and the `C` key at the same time. That will stop the script.

The script may ask you to do a few things, like enter a password or answer a question. Please interact with the script to answer its questions.

When the script is finished, it should print a message saying "Congrats!" and then open up a browser with this page. Alternatively, the script may have had an error. If you experience an error, wait to speak with me to fix it. Please send me an email at `joseph.sutherland@columbia.edu` if you get an error.

### Windows

If you are running Windows, then follow the following instructions to get the starter kit install. This script has been tested on Windows 10. I recommend upgrading to 10 (Columbia students can get the student edition gratis, IIRC).

#### 1. Uninstall existing apps

First, uninstall any of the applications listed above if they already exist on your system.

#### 2. Open Command Prompt as Administrator

Second, open up an *Elevated* Command Prompt (run Command Prompt as Administrator). To do so, search for `Command Prompt` in the search bar in the menu bar. Alternatively, you can search for `Command Prompt` in the file explorer. Right click the `Command Prompt` button or icon and you will get a drop-down menu with the option to "Run as Administrator". Select this option and a pop-up will ask you if you're sure. Say yes. This will open a command prompt window.

#### 3. Run the installation script.

Then, copy and paste the following command into the command line. Hit enter to start the

``` shell
@powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/jlsutherland/columbia-phd-startup/master/startup-scripts/pc.ps1'))"
```

### Linux/Ubuntu

Not yet supported (ironically).

# Wait, I had errors!!
Please don't continue with the setup---come into the workshop. We will debug your setup and get you running in no time! Just be sure to send me an email at `joseph.sutherland@columbia.edu` so I know what's coming and am prepared to help you.

# Setting up

If you got this far, go ahead and close down the `Command Prompt` or `Terminal`. We will chat little more about how to use these command-line interfaces, but they are no longer necessary for the purposes of this tutorial.

Take some time to read up on the tools you now have---links are provided above. Here are the first few things you want to do to configure and test drive your new setup.

## Update your TeX distribution
On Windows, update MikTeX by going to all apps > miktex 2.9 > miktex update (admin), then follow the prompts to update your distribution. On Mac, search for TeX Live Utility and perform the update using TeX Live.

This may take a while---it downloads several packages onto your computer to prepare LaTeX for use.

## Configure your R environment
Boot up R Studio. Then, on the command line provided within R Studio, run:

``` R
install.packages(c('knitr', 'rmarkdown'))
```

This will install the necessary packages for rmarkdown compilation. Then, go to
`Tools > Global Options > Sweave`. Under `Program Defaults`, for "Weave Rnw files using", select "knitr". Click Apply. Click Ok to exit. This set your R distribution up for `knitr` use.

Finally, if you want to look super cool... `Tools > Global Options > Appearance`. Change your editor theme, because you look like a n00b if you use the default. Click Apply. Boom, you're awesome now. Click Ok to exit.

https://chocolatey.org/packages for list of more packages

## Test your R/TeX configuration

This will bring everything together to make sure everything works. If it doesn't, no big---we will have time to debug at the workshop.  Here's how to test:

* Open R Studio.
* Click new > Rmarkdown
* Make sure you are in "Document" mode, rather than presenation or shiny
* Enter a title
* Enter an author
* Select "PDF"
* click Ok

This will generate an rmarkdown template for you. You should now be looking at a page of code-ish looking text.

* Click knit PDF (if you click the little dropdown arrow, click knit pdf again)
* Type in a filename and location
* When you press knit the first time, you may be asked to install packages by TeX Live or MikTeX. This will happen 10 or so times. What is happening is knitr is asking latex to call packages that are not installed on your system. Let MikTeX run as power user (click yes on the popup) and then click yes for install. Same goes for TeX Live. You won't have to do this again for these packages.

Finally, A PDF should pop up. If it doesn't, look in the file explorer in the bottom left-hand quadrant of the window and look for the file name.

If it worked, then you're all set!

# Ok, now what?
If you got here, then super congrats!! During the workshop, we will give you the full story... why you have these tools, how to use them, what the best practices are, etc. etc.
