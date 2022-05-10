cask_args appdir: '/Applications'

tap 'homebrew/cask-versions'
tap 'homebrew/cask-fonts'
tap 'homebrew/cask-drivers'
tap 'homebrew/bundle'
tap 'homebrew/core'
tap 'homebrew/formula-analytics'
tap 'homebrew/services'
#tap 'AdoptOpenJDK/openjdk'
#tap 'shopify/shopify'
tap 'wagoodman/dive'
tap 'aws/tap'
tap 'wallix/awless'
tap 'versent/homebrew-taps'
tap 'tektoncd/tools'
tap 'instrumenta/instrumenta'


# ### Mac tools vs. GNU tools
#
# We generaly prefer GNU tools over preinstalled Mac software tools.
# For example, we prefer the GNU `sed` command vs. macOS `sed` command.
#
# However, we have seen this cause conflicts with macOS software that
# isn't aware of GNU; therefore we install the dupes in parallel.
#
# See:
#
#   * https://www.topbug.net/blog/2013/04/14/install-and-use-gnu-command-line-tools-in-mac-os-x/
#
# Shell tools
brew 'coreutils'
brew 'moreutils'
brew 'findutils'
brew 'gnu-sed'
brew 'cmake'
brew 'ack'  # https://beyondgrep.com/

brew 'grc'  # Generic colorizer
brew 'openssl'
brew 'ssh-copy-id'
brew 'tmux'
brew 'roundup' # Unit testing
brew 'exa'
brew 'eg-examples'
brew 'mosh'

brew 'zsh'

# Compression
brew 'zstd'
brew 'guetzli'
brew 'zopfli'
brew 'unrar'

# Text search

brew 'ripgrep'     # ripgrep is text search
brew 'jq'          # jq is a lightweight and flexible command-line JSON processor.
brew 'xsv'         # xsv is for CSV file parsing, and is fast, full featured, and flexible.
cask 'tad'         # Tad is CSV viewer with features for pivot, search, etc.
brew 'fzf'

# Functions for use by applications that allow users to edit command lines while typing.
brew 'readline'
# TLDR provides simplified and community-driven man pages
brew 'tldr'

# Terminal
cask 'kitty'

# Filesystem support
cask 'macfuse'
brew 'ext4fuse'

###############
# Development #
###############

# Java Development
# ----------------
cask 'zulu-jdk11'
cask 'zulu-jdk17'
#cask 'adoptopenjdk8'
#cask 'adoptopenjdk11'
#cask 'adoptopenjdk14'
#cask 'adoptopenjdk11-openj9'
#cask 'adoptopenjdk14-openj9'
cask 'graalvm-ce'
brew 'jenv'
brew 'maven'
#brew 'gradle@6'
# Tooling
brew 'infer'

# JS Development
# --------------
brew 'nodenv'
brew 'yarn'

# Go Development
# --------------
brew 'go'

# Ruby Development
# ----------------
brew 'rbenv'
brew 'ruby-build'

# Python Development
# ----------------
brew 'pyenv'

# .Net Development
# ----------------
cask 'dotnet'

# SCM
# ---
#cask 'sourcetree'
brew 'git'
brew 'git-crypt'
# Git Large File Storage
brew 'git-lfs'
brew 'onefetch'
brew 'libgit2'
brew 'spaceman-diff'
brew 'grv'
cask 'fork'
cask 'gitup'
cask 'github'

# IDEs
# ----
#cask 'coda'
#cask 'eclipse-java'
cask 'visual-studio-code'
cask 'jetbrains-toolbox'
#cask 'openrefine'
#cask 'rstudio'

# Testing
# -------
#cask 'soapui'
brew 'wrk'

# Text Editors & Doc Tooling
# --------------------------
cask 'sublime-text'
#cask 'atom'
#cask 'macdown'
cask 'mark-text'
# PlantUML markup text to diagram
brew 'plantuml'
#cask 'staruml'

# Network
# -------
brew 'dnsmasq'
brew 'netcat'
brew 'nmap'
cask 'charles'
cask 'ngrok'
# Insomnia: REST client for API testing.
cask 'insomnia'
#cask 'paw' #Setapp
#cask 'postman'
brew 'socat'

# Cloud CLIs
# ----------
brew 'awscli'
brew 'aws-sam-cli'
brew 'awsebcli'
brew 'awless'
cask 'aws-vault'
brew 'saml2aws'
brew 'azure-cli'
brew 'terraform'

# Containers & VMs
# ----------------
#cask 'docker'
brew 'dive'
brew 'aquasecurity/trivy/trivy'
brew 'packer'
brew 'whalebrew'
#brew 'minikube'
brew 'docker-credential-helper-ecr'
brew 'k9s'
brew 'helm'
brew 'tektoncd/tools/tektoncd-cli'

#cask 'vmware-fusion'
#cask 'vagrant'

brew 'conftest'

# Kafka
# -----
brew 'kafka'
brew 'kafkacat'

# Web Development
# ---------------
#cask 'ghostlab'

# Databases
# ---------
# Postgres commmand line interface (CLI) with autocomplete
brew 'pgcli'
# SQLite database: self-contained, serverless, zero-configuration, transactional engine.
brew 'sqlite', link: true
# Sequel Pro database management application.
#cask 'sequel-pro'
#cask 'dbeaver-community'
#cask 'robomongo'

# Ops
# ---
# Consul tool for discovering and configuring services in your infrastructure
# brew 'consul'
# Monit is for managing and monitoring Unix systems.
brew 'monit'
brew 'certbot'

# Testing
# -------
brew 'mockserver'
#brew 'chromedriver'

# Utilities
# ---------
#cask 'dash' #setapp
#brew 'themekit' #Shopify tool


#############
# CLI Tools #
#############


# Downloaders
# -----------
brew 'curl'
brew 'httpie'
brew 'httrack'
brew 'wget', args: ['with-iri']

# Image tools
# -----------
brew 'exiftool'
brew 'ffmpeg', args: ['with-fdk-aac', 'with-tools', 'with-freetype', 'with-libass', 'with-libvorbis', 'with-libvpx', 'with-x265']
brew 'gifsicle'
brew 'graphicsmagick', args: ['webp']
brew 'imagemagick', args: ['with-librsvg']
brew 'jp2a'
#brew 'libcaca', args: ['with-imlib2']
brew 'webp'
brew 'graphviz'
cask 'imagealpha'
cask 'imagemin'
cask 'imageoptim'

# A/V tools
# ---------
brew 'lame'
brew 'theora'
brew 'x264'

# Misc
# ----
brew 'googler'
# sparklines for your shell
brew 'spark'
brew 'youtube-dl'

################
# Applications #
################

brew 'mas'
cask 'setapp'

# Browsers
# --------
#cask 'brave-browser'
cask 'firefox'
#cask 'google-chrome'
#cask 'microsoft-edge'
cask 'vivaldi'
#cask 'choosy' #Browserfairy
#cask 'fluid'

# Security
# --------
brew 'cloudflared'
cask '1password'
# cask 'authy'
cask 'keybase'
# Pass, a Unix password manager for the command line
brew 'pass'
brew 'ykman'
# cask 'encryptme'
cask 'expressvpn'
cask 'cloudflare-warp'
cask 'yubico-authenticator'
cask 'yubico-yubikey-manager'
#cask 'avast-security'

# Network
# -------
cask 'little-snitch'
cask 'tunnelblick'
cask 'viscosity'
cask 'wireshark'

# Chat
# ----
#cask 'skype'
#cask 'skype-for-business'
cask 'slack'
#cask 'telegram' #mas now
cask 'signal'

# Graphics Software
# -----------------
#cask 'adobe-creative-cloud'
#cask 'adobe-bridge-cc'
cask 'monodraw'
#cask 'icons8'
#cask 'sketch'

# A/V Software
# ------------
cask 'audio-hijack'
cask 'handbrake'
cask 'iina'
cask 'powerphotos'
cask 'vlc'

# e-Books
# -------
cask 'calibre'
#cask 'kindle'

# macOS utilities
# ---------------
cask 'appcleaner'
cask 'alfred'
#cask 'bartender' #setapp
#cask 'bettertouchtool' #setapp
cask 'cocktail'
brew 'duti'
cask 'hazel'
#cask 'tripmode' #setapp
cask 'the-unarchiver'

# Hardware / Drivers
# ---------------------
#cask 'scansnap-manager-ix500' #Replaced by ScanSnap Home
cask 'netgear-switch-discovery-tool'

# File Sync & Backup
# ------------------
#cask 'amazon-drive'
#cask 'arq'
#cask 'dropbox'
#cask 'google-drive'
cask 'resilio-sync'
brew 'rsync'
#cask 'synology-drive'
cask 'transmission'
cask 'transmit'
cask 'backblaze'
#cask 'tresorit'
cask 'maestral'

# Productivity
# ------------
#cask 'airtable'
cask 'grammarly'
cask 'mailmate'
#cask 'mailspring'
#cask 'microsoft-office'
cask 'notion'
#cask 'slite'
cask 'obsidian'
cask 'standard-notes'

# Project Management
# ------------------
cask 'clickup'

# Misc
# ----
#cask 'busycontacts'
cask 'geekbench'
cask 'rocket'
#cask 'google-adwords-editor'
#cask 'intel-power-gadget'
#cask 'marked'
#cask 'toggl'
#cask 'tilemill'


#########
# Fonts #
#########
cask 'font-fira-code'
cask 'font-iosevka'
cask 'font-pt-mono'
cask 'font-pt-sans'
cask 'font-pt-serif'
cask 'font-victor-mono'

#############
# Quicklook #
#############
cask 'betterzipql'
cask 'cert-quicklook'
cask 'qlcolorcode'
cask 'qlimagesize'
cask 'qlmarkdown'
cask 'qlprettypatch'
cask 'qlstephen'
cask 'qlvideo'
cask 'quicklook-csv'
cask 'quicklook-json'
cask 'suspicious-package'
cask 'webpquicklook'

#mas 'Agenda', id: 1287445660
#mas 'Annotate', id: 918207447
#mas 'Be Focused', id: 973134470
#mas 'CodeBox', id: 412536790
#mas 'Dropzone', id: 695406827
#mas 'Fantastical 2', id: 695406827
#mas 'GAGet', id: 968487158
#mas 'Glimpses', id: 637565340
#mas 'iMovie', id: 408981434
#mas 'Intensify', id: 716854513
#mas 'Lire', id: 1482527526
#mas 'MoneyWiz Premium', id: 1012291524
#mas 'Monity', id: 915542151
#mas 'OmniFocus 2', id: 867299399
#mas 'Pixave', id: 924891282
#mas 'Pixelmator', id: 407963104
#mas 'Pixen', id: 525180431
#mas 'Push Mic Control', id: 1155850258
#mas 'ScreenFloat', id: 414528154
#mas 'Screenium 3', id: 921553264
#mas 'Shopify', id: 1208212036
#mas 'Transmit', id: 403388562
#mas 'Tweetbot 3', id: 1384080005
#mas 'Ulysses', id: 623795237 #setapp
#mas 'WhatsApp', id: 1147396723
#mas 'Wire', id: 931134707

mas 'Affinity Designer', id: 824171161
mas 'Affinity Photo', id: 824183456
mas 'Affinity Publisher', id: 881418622
mas 'Apple Configurator 2', id: 1037126344
mas 'Bear', id: 1091189122
mas 'Better', id: 1121192229
mas 'Blackmagic Disk Speed Test', id: 425264550
#mas 'Calendar 366 II ', id: 1265895169
mas 'Cinemagraph Pro', id: 777874532
mas 'Coinverter', id: 926121450
mas 'Craft', id: 1487937127
mas 'DaisyDisk', id: 411643860
mas 'Darkroom', id: 953286746
mas 'Day One', id: 1055511498
cask 'dayone-cli'
mas 'Deckset', id: 847496013
mas 'Deliveries', id: 924726344
mas 'Draft Control', id: 644346785
mas 'Drafts', id: 1435957248
mas 'GoodNotes', id: 1444383602
mas 'Hush Nag Blocker', id: 1544743900
mas 'iA Writer', id: 775737590
mas 'Jira Cloud', id: 1475897096
mas 'Keep It', id: 1272768911
mas 'Keynote', id: 409183694
mas 'Klib', id: 1196268448
mas 'Labels and Databases', id: 922445776
mas 'macOS Server', id: 883878097
mas 'Magnet', id: 441258766
mas 'MediaInfo', id: 510620098
mas 'Numbers', id: 409203825
mas 'Omnigraffle 7', id: 1142578753
mas 'OneDrive', id: 823766827
mas 'Pages', id: 409201541
mas 'Paprika', id: 1303222628
mas 'Patterns', id: 429449079
mas 'Photo Privacy', id: 428752671
mas 'PiPifier', id: 1160374471
mas 'Reeder', id: 1529448980
mas 'Shuttie', id: 415184888
mas 'Soulver', id: 413965349
mas 'Spillo', id: 873245660
mas 'Tab Space', id: 1473726602
mas 'Telegram', id: 747648890
mas 'Textual', id: 1262957439
mas 'Things', id: 904280696
mas 'Todoist', id: 585829637
mas 'Trello', id: 1278508951
mas 'WireGuard', id: 1451685025
mas 'Xcode', id: 497799835

#################
# Not Automated #
#################

# Xmind 2020
# Bee (JIRA)
