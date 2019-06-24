# FoRmation

> FoRmation is a shell script to set up a macOS laptop for design, development, and R. It is entirely based on Mina Markham's excellent [Formation](https://github.com/minamarkham/formation). It can be run multiple times on the same machine safely. It installs, upgrades, or skips packages based on what is already installed on the machine.

## Install

Download the script:

```sh
git clone git@github.com/ajaypillarisetti/formation.git && cd formation
```

Review the script (please don't run scripts you don't understand):

```sh
less slay
```

Slay:

```sh
cd formation
./slay 2>&1 | tee ~/slay.log
```
Just follow the prompts and you’ll be fine.

:warning: Warning: I advise against running [this script](slay) unless you understand what it’s doing to your computer.

Mina created this based on her own preferences; I updated it to include things I need for work, including R, Creative Cloud, and other stuff. Your mileage will vary.

Once the script is done, quit and relaunch Terminal.

It is highly recommended to run the script regularly to keep your computer up to date.

Your last FoRmation run will be saved to `~/slay.log`. To review it, run `less ~/slay.log`.


## What it sets up
The setup process will install:

<details>
<summary>Basic tools:</summary>

* [XCode Command Line Tools](https://developer.apple.com/xcode/downloads/) for developer essentials.
* [Bash-it](https://github.com/Bash-it/bash-it/), for a more powerful bash.
* [Git](https://git-scm.com/) for version control
* [Homebrew](http://brew.sh/) for managing operating system libraries.
</details>

<details>
<summary>CLI Tools & Utilities:</summary>

* [Hub](http://hub.github.com/) for interacting with the GitHub API
* [mas](https://github.com/mas-cli/mas) Mac App Store command line interface
* [pandoc](https://pandoc.org)
* [Tig](https://github.com/jonas/tig) text-mode interface for git
</details>

### Apps

<details>
<summary>Productivity</summary>


* [Alfred](https://www.alfredapp.com/) for increased productivity and efficiency with macOS.
* [Better Blocker](https://better.fyi) for privacy.
* [Endnote](https://endnote.com) for citation management. 
* [Fantastical](https://flexibits.com/fantastical) for a better calendar.
* [iWork](https://www.apple.com/iwork/) mainly for Keynote
* [Magnet](https://magnet.crowdcafe.com) for managing windows on your Mac.
* [Microsoft Office](https://products.office.com/en-us/mac/microsoft-office-for-mac)
* [Papers](https://www.papersapp.com) for better citation management. 
* [Soulver](https://soulver.app) for a better calculator. 
* [Spark](http://sparkmailapp.com/) for a better mail client.
* [Things](https://culturedcode.com/things/) for getting things done.
* [Toggl](https://toggl.com) for tracking time. 
* [Tweetbot](https://tapbots.com/tweetbot/mac/) for non-productivity.
</details>

<details>
<summary>Development</summary>

* [Apple Remote Desktop](https://www.apple.com/remotedesktop/) lol check out that website. 
* [BasicTex](http://www.tug.org/mactex/morepackages.html) for a smaller TeX installation.
* [Coda](https://panic.com/coda/) for old-school web development. 
* [Kaleidoscope](https://www.kaleidoscopeapp.com/) for a better diff tool.
* [Launch Control](https://www.soma-zone.com/LaunchControl/) a GUI for controling launchd.
* [Parallels](https://www.parallels.com/) for virtualization. Expensive, worth it?
* [R](http://r-project.org)
* [R-Studio](https://rstudio.com) Sometimes you need it.
* [Reggy](http://reggyapp.com) for testing regular expressions. 
* [SequelPro](https://www.sequelpro.com) for MySQL/Maria management.
* [Sublime Text](https://www.sublimetext.com) for Ajay's favorite text editor.
* [Transmit](https://panic.com/transmit/) The best FTP client
* [XQuartz](https://www.xquartz.org)
</details>

<details>
<summary>Design</summary>

* [Adobe Creative Cloud](https://www.adobe.com/creativecloud.html)
* [Sip](http://sipapp.io/) collect, organize & share your colors
* [Sketch](https://www.sketchapp.com/) for design.
</details>

<details>
<summary>Communication</summary>

* [Skype](https://www.skype.com/en/) for free calls to friends and family.
* [Slack](https://slack.com/) where work happens.
* [Zoom](https://zoom.us)
</details>

<details>
<summary>Utilities</summary>

* [1Password](https://1password.com/) for password management.
* [Bartender](https://www.macbartender.com) for taking control of your menu bar.
* [Carbon Copy Cloner](https://bombich.com) for automating your backups. 
* [Coolterm](https://freeware.the-meiers.org) for connecting to serial devices over USB.
* [Dropbox](https://www.dropbox.com) for cloud file storage.
* [Encrypto](https://macpaw.com/encrypto) for securing files.
* [iVPN](https://www.ivpn.net) for privacy.
* [nvALT](https://brettterpstra.com/projects/nvalt/) for all the great notes. 
</details>

<details>
<summary>Miscellaneous</summary>
* [Beamer](https://beamer-app.com) for sending video from your mac to other screens.
* [Handbrake](https://handbrake.fr) for encoding video.
* [Kindle](https://apps.apple.com/us/app/kindle/id405399194?mt=12)
* [NetNewsWire](https://ranchero.com/netnewswire/) the once and future king of RSS readers.
* [Plex Media Player](https://www.plex.tv/blog/introducing-the-plex-media-player/) for accessing remove media libraries. 
* [VLC](http://www.videolan.org/) for a better media player.
</details>

<details>
<summary>Browsers</summary>

* [Brave](https://brave.com/) for web browsing without ads.
* [Chrome](https://www.google.com/chrome/browser/desktop/) for fast and free web browsing.
</details>


<details>
<summary>R Packages</summary>

* assertthat
* data.table
* dbplyr
* doMC
* dplyr
* DT
* dygraphs
* ggplot2
* httr
* knitr
* lubridate
* magrittr
* nlme
* plyr
* purrr
* readxl
* reshape2
* rsconnect
* shiny
* shiny.semantic
* shinydashboard
* shinyjs
* stringr
* testthat
* tidyr
* tint
* tufte
* writexl
* zoo

<sub>Also installed all of the package dependencies. Currently writtent to support only packages on CRAN.</sub>

</details>


## 🌶 Just add `~/.hot-sauce`

Your `~/.hot-sauce` is added at the end of the FoRmation script. Put your customizations there.
For example:

```sh
#!/usr/bin/env bash

NERDFONTS_RELEASE=$(curl -L -s -H 'Accept: application/json' https://github.com/ryanoasis/nerd-fonts/releases/latest)
NERDFONTS_VERSION=$(get_github_version $NERDFONTS_RELEASE)

NERDFONTS=(
    SpaceMono
    Hack
    AnonymousPro
    SourceCodePro
    Inconsolata
)

step "Installing fonts…"
for font in ${NERDFONTS[@]}; do
    if [ ! -d ~/Library/Fonts/$font ]; then
        printf "${indent}  [↓] $font "
        wget -P ~/Library/Fonts https://github.com/ryanoasis/nerd-fonts/releases/download/$NERDFONTS_VERSION/$font.zip --quiet;unzip -q ~/Library/Fonts/$font -d ~/Library/Fonts/$font
        print_in_green "${bold}✓ done!${normal}\n"
    else
        print_muted "${indent}✓ $font already installed. Skipped."
    fi
done

step "Installing R Packages"
for package in $(<$cwd/swag/rpackages); do
    if [ ! -d /Library/Frameworks/R.framework/Versions/Current/Resources/library/$package ]; then
        printf "${indent}  [↓] $package "
        Rscript ~/Documents/formation-pillarisetti/swag/install_packages.R $package
        print_in_green "${bold}✓ done!${normal}\n"
    else
        print_muted "${indent}✓ $package already installed. Skipped."
    fi
done
```

Write your customizations such that they can be run safely more than once.

FoRmation functions such as `step` and `link` can be used in your `~/.hot-sauce`.

## Known Issues
Cask does not recognize applications installed outside of Homebrew Cask – in the case that the script fails, you can either remove the application from the install list or uninstall the application causing the failure and try again.

## Acknowledgements

Inspiration and code was taken from many sources, including:

* [Mathias Bynens'](https://github.com/mathiasbynens) [dotfiles](https://github.com/mathiasbynens/dotfiles)
* thoughtbot's [laptop](https://github.com/thoughtbot/laptop/)

## 📜  License

Formation is customized for my own needs. It is free software, and may be redistributed under the terms specified in the [LICENSE] file.

[LICENSE]: LICENSE
