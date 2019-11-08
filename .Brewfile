cask_args appdir: '/Applications'

tap 'caskroom/cask'
tap homebrew/cask-versions
tap 'github/bootstrap'
tap 'homebrew/bundle'
tap 'homebrew/core'
tap 'homebrew/dev-tools'
tap 'homebrew/formula-analytics'
tap 'homebrew/services'
tap 'shopify/shopify'
tap 'wagoodman/dive'
tap 'aws/tap'
tap 'wallix/awless'


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
brew 'gnu-sed', args: ['with-default-names']
brew 'cmake'
brew 'ack'  # https://beyondgrep.com/

brew 'grc'  # Generic colorizer
brew 'openssl'
brew 'ssh-copy-id'
brew 'tmux'
brew 'roundup' # Unit testing

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

# Development
brew 'git'
brew 'git-crypt'
# Git Large File Storage
brew 'git-lfs'



################
# Development #
###############

# Java Development
# ----------------
cask 'java'
cask 'zulu'
cask 'zulu8'
cask 'zulu11'
brew 'jenv'
brew 'maven'
brew 'gradle@5'
# IDEs
cask 'jetbrains-toolbox'
cask 'eclipse-java'
# Tooling
cask 'yourkit-java-profiler'
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

# Network
# -------
brew 'dnsmasq'
brew 'netcat'
brew 'nmap'
# Insomnia: REST client for API testing.
cask 'insomnia'

# Cloud CLIs
# ----------
brew 'awscli'
brew 'aws-sam-cli'
brew 'awsebcli'
brew 'awless'
cask 'aws-vault'
brew 'azure-cli'
brew 'terraform'

# Containers
# ----------
cask 'docker'
brew 'dive'
brew 'packer'
brew 'minikube'

# Ops
# ---
# Consul tool for discovering and configuring services in your infrastructure
brew 'consul'
# Monit is for managing and monitoring Unix systems.
brew 'monit'
brew 'certbot'

# Testing
# -------
brew 'mockserver'
#brew 'chromedriver'



# Downloaders
# -----------
brew 'curl'
brew 'httpie'
brew 'httrack'
brew 'wget', args['with-iri']

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
 
# A/V tools
# ---------
brew 'lame'
brew 'theora'
brew 'x264'


brew 'fontforge'

#brew 'hub'

#brew 'libgit2'
brew 'mas'

brew 'googler'

brew 'rsync'

brew 'spaceman-diff'
brew 'spark'                        # sparklines for your shell



brew 'youtube-dl'





brew 'themekit'


brew 'zsh'


# Browsers
cask 'brave'
cask 'firefox'
cask 'google-chrome'
cask 'microsoft-edge-dev'
cask 'choosy'

# Security
cask '1password'
cask 'keybase'
# Pass, a Unix password manager for the command line
brew 'pass'
brew 'ykman'

# Network
cask 'charles'
cask 'ngrok'
cask 'little-snitch'
cask 'postman'
cask 'tunnelblick'
cask 'viscosity'

# Chat
cask 'skype'
cask 'skype-for-business'
cask 'slack'
cask 'telegram'

# Development



cask 'dotnet'





# PlantUML markup text to diagram
brew 'plantuml'

## Editors
cask 'sublime-text'
cask 'atom'


# Databases
# Postgres commmand line interface (CLI) with autocomplete
brew 'pgcli'
# SQLite database: self-contained, serverless, zero-configuration, transactional engine.
brew 'sqlite', link: true
# Sequel Pro database management application.
cask 'sequel-pro'


cask 'vmware-fusion'

cask 'ghostlab'

cask 'sourcetree'
cask 'dash'


cask 'adobe-creative-cloud'
cask 'adobe-bridge-cc'
cask 'airtable'
cask 'alfred'
#cask 'amazon-drive'
cask 'amazon-workspaces'

cask 'appcleaner'
cask 'appcode'
#cask 'arq'
cask 'audio-hijack'
cask 'bartender'
cask 'bettertouchtool'

#cask 'busycontacts'
# e-Books
cask 'calibre'
cask 'kindle'


cask 'clarify'
cask 'encryptme'
cask 'cocktail'
cask 'coda'

cask 'dayone-cli'

cask 'dropbox'
cask 'duti'

cask 'evernote'

cask 'fluid'
cask 'geekbench'

cask 'google-adwords-editor'
cask 'google-drive'
cask 'grammarly'
cask 'handbrake'
cask 'hazel'
cask 'icons8'
cask 'iina'
cask 'imagealpha'
cask 'imagemin'
cask 'imageoptim'
cask 'intel-power-gadget'
#cask 'intel-xdk-iot'
cask 'macdown'
cask 'mailmate'
#cask 'mapbox-studio'
cask 'marked'
#cask 'microsoft-lync'
cask 'microsoft-office'
cask 'monodraw'
cask 'notion'
cask 'openrefine'
cask 'opera'
#cask 'paw'
cask 'powerphotos'
#cask 'resilio-sync'
#cask 'robomongo'
cask 'rstudio'
cask 'scansnap-manager-ix500'
#cask 'screenhero'
cask 'setapp'
cask 'sketch'
cask 'sonos'
cask 'steam'
cask 'tilemill'
cask 'toggldesktop'
cask 'transmission'
cask 'transmit'
cask 'tresorit'
cask 'tripmode'
cask 'vagrant'
cask 'vitamin-r'
cask 'vlc'
cask 'wireshark'

###########################################################################
# FONTS
###########################################################################
cask 'font-fira-code'
cask 'font-iosevka'
cask 'font-pt-mono'
cask 'font-pt-sans'
cask 'font-pt-serif'

###########################################################################
# quicklook
###########################################################################
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

mas 'Affinity Designer', id: 824171161
mas 'Affinity Photo', id: 824183456
mas 'Annotate', id: 918207447
mas 'Apple Configurator', id: 1037126344
mas 'Be Focused', id: 973134470
mas 'Bear', id: 1091189122
mas 'Better', id: 1121192229
mas 'Blackmagic Disk Speed Test', id: 425264550
mas 'Cinemagraph Pro', id: 777874532
mas 'CodeBox', id: 412536790
mas 'Coinverter', id: 926121450 
mas 'DaisyDisk', id: 411643860
mas 'Day One', id: 1055511498
mas 'Deckset', id: 847496013
mas 'Deliveries', id: 924726344
mas 'Draft Control', id: 644346785
mas 'Dropzone', id: 695406827
mas 'Fantastical 2', id: 695406827
mas 'GAGet', id: 968487158
mas 'Glimpses', id: 637565340
mas 'GoodNotes', id: 1026566364
mas 'iMovie', id: 408981434
mas 'Intensify', id: 716854513
mas 'Keynote', id: 409183694
mas 'Klib', id: 1196268448
mas 'Labels and Databases', id: 922445776
mas 'Magnet', id: 441258766
mas 'MediaInfo', id: 510620098
mas 'MoneyWiz Premium', id: 1012291524
mas 'Monity', id: 915542151
mas 'Napkin', id: 581789185
mas 'Numbers', id: 409203825
mas 'OmniFocus 2', id: 867299399
mas 'Omnigraffle 7', id: 1142578753
mas 'Pages', id: 409201541
mas 'Paprika', id: 451907568
mas 'Patterns', id: 429449079
mas 'Photo Privacy', id: 428752671
mas 'Pixave', id: 924891282
mas 'Pixelmator', id: 407963104
mas 'Pixen', id: 525180431
#mas 'Remote Desktop', id: 409907375
#mas 'Sauce', id: 
mas 'ScreenFloat', id: 414528154
mas 'Screenium 3', id: 921553264
mas 'Shopify', id: 1208212036
mas 'Shuttie', id: 415184888
mas 'Soulver', id: 413965349
mas 'Spillo', id: 873245660
mas 'Telegram', id: 747648890
mas 'Textual 6', id: 896450579
mas 'TrackingTime', id: 967777543
#mas 'Transmit', id: 403388562
mas 'Tweetbot', id: 557168941
mas 'Ulysses', id: 623795237
mas 'WhatsApp', id: 1147396723
mas 'Wire', id: 931134707
mas 'Xcode', id: 497799835
