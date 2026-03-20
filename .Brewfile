cask_args appdir: '/Applications'

tap '1password/tap'
tap 'adoptopenjdk/openjdk'
tap 'anchore/grype'
tap 'anchore/syft'
tap 'anomalyco/tap'
tap 'aquasecurity/trivy'
tap 'ariga/tap'
tap 'aws/tap'
tap 'cloudflare/cloudflare'
tap 'emqx/mqttx'
tap 'fairwindsops/tap'
tap 'hashicorp/tap'
tap 'homebrew-ffmpeg/ffmpeg'
tap 'instrumenta/instrumenta'
tap 'k0sproject/tap'
tap 'kubeshark/kubeshark'
tap 'mdogan/zulu'
tap 'oven-sh/bun'
tap 'pulumi/tap'
tap 'shopify/shopify'
tap 'simonw/llm'
tap 'tektoncd/tools'
tap 'vectordotdev/brew'
tap 'versent/taps'
tap 'wagoodman/dive'
tap 'wallix/awless'
tap 'yulrizka/tap'


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
brew 'ssh-copy-id'
brew 'tmux'
brew 'roundup' # Unit testing
brew 'eza'
brew 'eg-examples'
brew 'mosh'

brew 'zsh'

# Additional CLI & automation tools
brew 'ansible'
brew 'argocd'
brew 'asciinema'
brew 'atlas'
brew 'automake'
brew 'cloc'
brew 'difftastic'
brew 'diffoci'
brew 'gemini-cli'
brew 'gh'
brew 'hadolint'
brew 'lazydocker'
brew 'monolith'
brew 'pandoc'
brew 'poppler'
brew 'shopify/shopify/themekit'
brew 'step'
brew 'telnet'
brew 'tlrc'
brew 'uv'
brew 'vale'
brew 'anomalyco/tap/opencode'

# Compression
brew 'zstd'
brew 'guetzli'
brew 'unar'

# Text search

brew 'ripgrep'     # ripgrep is text search
brew 'jq'          # jq is a lightweight and flexible command-line JSON processor.
brew 'qsv'         # qsv supersedes xsv for CSV parsing.
cask 'tad'         # Tad is CSV viewer with features for pivot, search, etc.
brew 'fzf'

# Functions for use by applications that allow users to edit command lines while typing.
brew 'readline'
# TLDR provides simplified and community-driven man pages
brew 'tlrc'

# Terminal
cask 'ghostty'

# Filesystem support
cask 'macfuse'

###############
# Development #
###############

# Java Development
# ----------------
cask 'zulu@11'
cask 'zulu@17'
cask 'zulu@21'
cask 'zulu@25'
brew 'jenv'
brew 'maven'
brew 'gradle'

# JS Development
# --------------
brew 'nodenv'
brew 'yarn'
brew 'oven-sh/bun/bun'

# Go Development
# --------------
brew 'go'
brew 'goenv'
brew 'go-jsonnet'

# Ruby Development
# ----------------
brew 'rbenv'
brew 'ruby-build'

# Python Development
# ----------------
brew 'pyenv'
brew 'python@3.12'
brew 'python@3.13'
brew 'python@3.14'

# Rust Development
# ----------------
brew 'rust'

# Lua Development
# ---------------
brew 'luarocks'


# Apple Platform Development
# --------------------------
brew 'cocoapods'
brew 'xcodegen'

# Mobile Development
# ------------------
cask 'android-platform-tools'
cask 'flutter'

# SCM
# ---
#cask 'sourcetree'
brew 'git'
brew 'git-crypt'
# Git Large File Storage
brew 'git-lfs'
brew 'onefetch'
brew 'libgit2'
brew 'gh'
cask 'fork'
cask 'gitup-app'
cask 'github'

# IDEs
# ----
#cask 'coda'
#cask 'eclipse-java'
cask 'visual-studio-code'
cask 'jetbrains-toolbox'
cask 'vscodium'
cask 'zed'
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
# PlantUML markup text to diagram
brew 'plantuml'
cask 'staruml'

# Network
# -------
brew 'dnsmasq'
brew 'netcat'
brew 'nmap'
cask 'charles'
cask 'bruno'
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
brew 'aws-elasticbeanstalk'
brew 'saml2aws'
brew 'azure-cli'
brew 'cfn-lint'
brew 'cloudflare/cloudflare/cf-terraforming'
brew 'hashicorp/tap/packer'
brew 'hashicorp/tap/terraform'
brew 'terraformer'
brew 'pulumi'
brew 'infracost'

# Containers & VMs
# ----------------
cask 'podman-desktop'
brew 'colima'
brew 'dive'
brew 'trivy'
brew 'syft'
brew 'grype'
brew 'skopeo'
brew 'whalebrew'
brew 'docker-credential-helper-ecr'
brew 'fairwindsops/tap/pluto'

# Kubernetes
# ----------------
brew 'k0sproject/tap/k0sctl'
brew 'k9s'
brew 'cilium-cli'
brew 'kubernetes-cli'
brew 'kubeshark'
brew 'kustomize'
brew 'helm'
brew 'tektoncd-cli'


brew 'conftest'

# Kafka
# -----
brew 'kafka'
brew 'kcat'
brew 'emqx/mqttx/mqttx-cli'

# Web Development
# ---------------
#cask 'ghostlab'

# Data
# ---------

# Databases & clients

# Postgres commmand line interface (CLI) with autocomplete
brew 'pgcli'
# SQLite database: self-contained, serverless, zero-configuration, transactional engine.
brew 'sqlite'
brew 'duckdb'
# Sequel Pro database management application.
#cask 'sequel-pro'
# DBeaver visual SQL client
cask 'dbeaver-community'
#cask 'robomongo'

# Data Analysis
brew 'datasette'

# Ops
# ---
# Consul tool for discovering and configuring services in your infrastructure
# brew 'consul'
# Monit is for managing and monitoring Unix systems.
brew 'monit'
brew 'certbot'
brew 'infracost'

# Testing
# -------
brew 'mockserver'
#brew 'chromedriver'

# Observability
brew 'vectordotdev/brew/vector'

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
brew 'wget'
brew 'yt-dlp'
brew 'zimfw'

# Image tools
# -----------
brew 'exiftool'
brew 'imagemagick'
brew 'homebrew-ffmpeg/ffmpeg/ffmpeg', args: ['with-fdk-aac', 'with-tools', 'with-freetype', 'with-libass', 'with-libvorbis', 'with-libvpx', 'with-x265']
brew 'gifsicle'
brew 'graphicsmagick'
brew 'jp2a'
#brew 'libcaca', args: ['with-imlib2']
brew 'webp'
brew 'graphviz'
cask 'imageoptim'
cask 'imagemin'

# A/V tools
# ---------
brew 'lame'
brew 'theora'
brew 'x264'

# Misc
# ----
# sparklines for your shell
brew 'spark'
brew 'yq'

################
# Applications #
################

brew 'mas'
cask 'setapp'

# Browsers
# --------
cask 'brave-browser'
cask 'firefox'
cask 'librewolf'
cask 'microsoft-edge'
cask 'tor-browser'
cask 'vivaldi'
cask 'choosy' #Browserfairy
cask 'fluid'

# Security
# --------
brew 'cloudflared'
cask '1password'
cask '1password-cli'
cask 'aws-vault-binary'
cask 'keybase'
# Pass, a Unix password manager for the command line
brew 'pass'
brew 'ykman'
# cask 'encryptme'
cask 'expressvpn'
cask 'cloudflare-warp'
cask 'yubico-authenticator'
cask 'yubico-yubikey-manager'
cask 'blockblock'
#cask 'avast-security'

# Network
# -------
cask 'little-snitch'
cask 'tunnelblick'
cask 'viscosity'
# cask 'wireshark-app' # Requires manual install with sudo for capture drivers

# Chat / Video
# ------------
#cask 'skype'
#cask 'skype-for-business'
cask 'slack'
#cask 'telegram' ##mas now
cask 'signal'

# Graphics Software
# -----------------
#cask 'adobe-creative-cloud'
#cask 'adobe-bridge-cc'
cask 'monodraw'
#cask 'sketch'

# A/V Software
# ------------
cask 'audio-hijack'
cask 'handbrake-app'
cask 'iina'
cask 'powerphotos'
cask 'vlc'

# Video/Audio editing
# -------------------

# e-Books
# -------
cask 'calibre'
cask 'kindle'
cask 'sigil'

# macOS utilities
# ---------------
cask 'appcleaner'
cask 'alfred'
#cask 'bartender' #setapp
#cask 'bettertouchtool' #setapp
brew 'duti'
cask 'hazel'
#cask 'tripmode' #setapp
cask 'the-unarchiver'
cask 'stats'
cask 'microsoft-auto-update'

# Hardware / Drivers
# ---------------------
#cask 'scansnap-manager-ix500' #Replaced by ScanSnap Home
#cask 'netgear-switch-discovery-tool'

# File Sync & Backup
# ------------------
#cask 'amazon-drive'
#cask 'arq'
#cask 'dropbox'
#cask 'google-drive'
cask 'resilio-sync'
brew 'rsync'
cask 'synology-drive'
cask 'localsend'
cask 'transmission'
cask 'transmit'
cask 'backblaze'
#cask 'tresorit'
cask 'maestral'

# Productivity
# ------------
cask 'airtable'
cask 'grammarly'
cask 'mailmate'
cask 'mailspring'
cask 'microsoft-office'
cask 'notion'
cask 'linear-linear'
cask 'obsidian'
cask 'standard-notes'

# Project Management
# ------------------
cask 'clickup'

# Games
# -----
#cask 'nvidia-geforce-now'


# AI/LLM
# ----
cask 'codex'
cask 'commander'

# Misc
# ----
#cask 'busycontacts'
cask 'geekbench'
cask 'rocket'
#cask 'marked'
#cask 'toggl'
#cask 'tilemill'


#########
# Fonts #
#########
cask 'font-fira-code'
cask 'font-blex-mono-nerd-font'
cask 'font-geist'
cask 'font-ibm-plex-mono'
cask 'font-ibm-plex-sans'
cask 'font-iosevka-nerd-font'
cask 'font-pt-mono'
cask 'font-pt-sans'
cask 'font-pt-serif'
cask 'font-victor-mono'
cask 'font-mona-sans'
cask 'font-hubot-sans'
cask 'font-jetbrains-mono'

# Design / Sketch fonts
cask 'font-architects-daughter'
cask 'font-flow-block'
cask 'font-flow-circular'
cask 'font-flow-rounded'
cask 'font-redacted'
cask 'font-redacted-script'


#############
# Quicklook #
#############
# See: https://github.com/sindresorhus/quick-look-plugins
cask 'qlimagesize'
cask 'qlvideo'
cask 'suspicious-package'

# Mac App Store — Browsers & Web
mas '1Password for Safari', id: 1569813296
mas 'Ivory', id: 6444602274
mas 'Kagi for Safari', id: 1622835804
mas 'PiPifier', id: 1160374471
mas 'Save to Reader', id: 1640236961
mas 'StopTheMadness Pro', id: 6471380298
mas 'Wipr', id: 1662217862
mas 'xSearch', id: 1579902068

# Mac App Store — Productivity & Notes
mas 'Calendar 366 II', id: 1265895169
mas 'Cardhop', id: 1290358394
mas 'Cleft', id: 6479458038
mas 'Craft', id: 1487937127
mas 'Day One', id: 1055511498
mas 'Drafts', id: 1435957248
mas 'Everyday Habit Tracker', id: 1394150432
mas 'Flow', id: 1423210932
mas 'Focused Work', id: 1523968394
mas 'Goodnotes', id: 1444383602
mas 'iA Writer', id: 775737590
mas 'Magnet', id: 441258766
mas 'MarginNote 3', id: 1423522373
mas 'MarkDownload - Markdown Web Clipper', id: 1554029832
mas 'NotePlan', id: 1505432629
mas 'Obsidian Web Clipper', id: 6720708363
mas 'Pages', id: 409201541
mas 'Paprika Recipe Manager 3', id: 1303222628
mas 'Pins', id: 1547106997
mas 'Reeder', id: 1529448980
mas 'reMarkable', id: 1276493162
mas 'Soulver 2', id: 413965349
mas 'Tab Space', id: 1473726602
mas 'Things', id: 904280696
mas 'TickTick', id: 966085870
mas 'Timery', id: 1425368544
mas 'Todoist', id: 585829637
mas 'Wallaroo', id: 1630565980

# Mac App Store — Media & Creativity
mas '3d Scanner App', id: 1419913995
mas 'Cinemagraph Pro', id: 777874532
mas 'Codye', id: 1516894961
mas 'Darkroom', id: 953286746
mas 'Deckset', id: 847496013
mas 'Highlights', id: 1498912833
mas 'iMovie', id: 408981434
mas 'MarkEdit', id: 1669953820
mas 'MediaInfo', id: 510620098
mas 'MetaDoctor Pro', id: 992000603
mas 'Mimeo Photos', id: 1282504627
mas 'Mela', id: 1568924476
mas 'Pastel', id: 413897608
mas 'Patterns', id: 429449079
mas 'RAW Power', id: 1157116444

# Mac App Store — Dev & IT
mas 'Apple Configurator', id: 1037126344
mas 'Developer', id: 640199958
mas 'EasyMQTT', id: 1523099606
mas 'fm', id: 1626267810
mas 'Home Assistant', id: 1099568401
mas 'HomePass', id: 1330266650
mas 'Jira', id: 1475897096
mas 'LanguageTool', id: 1534275760
mas 'Nautik', id: 1672838783
mas 'Nitro', id: 1591292532
mas 'Numbers', id: 409203825
mas 'Keynote', id: 409183694
mas 'OmniFocus', id: 1542143627
mas 'OmniGraffle', id: 1142578753
mas 'OTP Auth', id: 1471867429
mas 'Overlap', id: 1516950324
mas 'Screens 5', id: 1663047912
mas 'Server', id: 883878097
mas 'Super Agent', id: 1568262835
mas 'Swift Mail', id: 1595671863
mas 'Tailscale', id: 1475387142
mas 'TestFlight', id: 899247664
mas 'Textual 7', id: 1262957439
mas 'Trello', id: 1278508951
mas 'TV Launcher', id: 1622598042
mas 'UTM', id: 1538878817
mas 'Xcode', id: 497799835

# Mac App Store — Utilities & Misc
mas 'Blackmagic Disk Speed Test', id: 425264550
mas 'Boop', id: 1518425043
mas 'Coinverter', id: 926121450
mas 'DaisyDisk', id: 411643860
mas 'Deliveries', id: 924726344
mas 'ExifPurge', id: 784466108
mas 'Hush', id: 1544743900
mas 'Klib', id: 1196268448
mas 'MusicHarbor', id: 1440405750
mas 'Parcel Classic', id: 639968404
mas 'PodcastSoundboard', id: 1265723161
mas 'The Jackbox Party Pack 8', id: 1572324508
mas 'WhatsApp', id: 310633997

#################
# Not Automated #
#################

# Xmind 2020
# Bee (JIRA)
