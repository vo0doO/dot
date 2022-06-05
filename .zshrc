# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$HOME/.local/bin:$HOME/bin:/usr/local/bin:$PATH
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

eval "$(fastly --completion-script-zsh)"
# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="josh" 
# "jonathan"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
ZSH_THEME_RANDOM_CANDIDATES=("robbyrussell" "essembeh" "kardan" "rgm" "Soliah" "evan" "kennethreitz" "risto" "adben" "fino-theme" "kiwi" "rixius" "af-magic" "fino" "kolo" "rkj-repos" "afowler" "fishy" "kphoen" "rkj" "lazz" "lambda" "fletcherm" "linuxonly" "sammy" "alanpeabody" "fox" "lukerandall" "simonoff" "amuse" "frisk" "macovsky-theme" "simple" "apple" "frontcube" "macovsky" "skaro" "arrow" "funky" "maran" "smt" "aussiegeek" "fwalch" "mgutz" "sonicradish" "avit" "gallifrey" "mh" "sorin" "awesomepanda" "gallois" "michelebologna" "sporty_256" "bira" "garyblessington" "mikeh" "steeef" "blinks" "gentoo" "miloshadzic" "strug" "bureau" "geoffgarside" "minimal" "sunaku" "candy-theme" "gianu" "mira" "sunrise" "candy" "gnzh" "mlh" "superjarin" "clean" "gozilla" "mortalscumbag" "suvash" "cloud" "half-theme" "mrtazz" "takashiyoshida" "crcandy" "humza" "murilasso" "terminalparty" "crunch" "imajes" "muse" "theunraveler" "cypher" "intheloop" "nanotech" "tjkirch" "dallas" "itchy" "nebirhos" "tjkirch_mod" "darkblood" "jaischeema" "nicoulaj" "tonotdo" "daveverwer" "jbergantine" "norm" "trapd00r" "dieter" "jispwoso" "obraun" "wedisagree" "dogenpunk" "jnrowe" "peepcode" "wezm"+ "dpoggi" "philips" "wezm" "dst" "josh" "pmcgee" "wuffers" "dstufft" "jreese" "pygmalion-virtualenv" "xiong-chiamiov-plus" "duellj" "jtriley" "pygmalion" "xiong-chiamiov" "eastwood" "juanghurtado" "random" "ys" "edvardm" "junkfood" "re5et" "zhann" "emotty" "kafeitu" "refined")

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
zstyle ':omz:update' mode disabled # disable automatic updates
zstyle ':omz:update' mode auto # update automatically without asking
zstyle ':omz:update' mode reminder # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# chown $(whoami):$(whoami) $HOME/.ssh/id_rsa
# chmod 000400 $HOME/.ssh/id_rsa
# ssh-add $HOME/.ssh/id_rsa

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  adb
  ag
  alias-finder
  aliases
  ansible
  ant
  apache2-macports
  arcanist
  archlinux
  asdf
  autojump
  autopep8
  aws
  battery
  bazel
  bbedit
  bedtools
  bgnotify
  bower
  branch
  brew
  bundler
  cabal
  cake
  cakephp3
  capistrano
  catimg
  celery
  charm
  chruby
  chucknorris
  cloudfoundry
  codeclimate
  coffee
  colemak
  colored-man-pages
  colorize
  command-not-found
  common-aliases
  compleat
  composer
  copybuffer
  copyfile
  copypath
  cp
  cpanm
  dash
  debian
  deno
  dircycle
  direnv
  dirhistory
  dirpersist
  dnf
  dnote
  docker
  docker-compose
  docker-machine
  doctl
  dotenv
  dotnet
  droplr
  drush
  eecms
  emacs
  ember-cli
  emoji
  emoji-clock
  emotty
  encode64
  extract
  fabric
  fancy-ctrl-z
  fasd
  fastfile
  fbterm
  fd
  fig
  firewalld
  flutter
  fnm
  forklift
  fossil
  frontend-search
  fzf
  gas
  gatsby
  gb
  gcloud
  geeknote
  gem
  genpass
  git
  git-auto-fetch
  git-escape-magic
  git-extras
  git-flow
  git-flow-avh
  git-hubflow
  git-lfs
  git-prompt
  gitfast
  github
  gitignore
  glassfish
  globalias
  gnu-utils
  golang
  gpg-agent
  gradle
  grails
  grc
  grunt
  gulp
  hanami
  helm
  heroku
  history
  history-substring-search
  hitchhiker
  hitokoto
  homestead
  httpie
  invoke
  ionic
  ipfs
  isodate
  istioctl
  iterm2
  jake-node
  jenv
  jfrog
  jhbuild
  jira
  jruby
  jsontools
  juju
  jump
  kate
  keychain
  kitchen
  kn
  knife
  knife_ssh
  kops
  kube-ps1
  kubectl
  kubectx
  lando
  laravel
  laravel4
  laravel5
  last-working-dir
  lein
  lighthouse
  lol
  lpass
  lxd
  macos
  macports
  magic-enter
  man
  marked2
  mercurial
  meteor
  microk8s
  minikube
  mix
  mix-fast
  mongocli
  mosh
  multipass
  mvn
  mysql-macports
  n98-magerun
  nanoc
  ng
  nmap
  node
  nomad
  npm
  nvm
  oc
  octozen
  operator-sdk
  otp
  pass
  paver
  pep8
  per-directory-history
  percol
  perl
  perms
  phing
  pip
  pipenv
  pj
  please
  pm2
  pod
  poetry
  postgres
  pow
  powder
  powify
  profiles
  pyenv
  pylint
  python
  rails
  rake
  rake-fast
  rand-quote
  rbenv
  rbfu
  rbw
  react-native
  rebar
  redis-cli
  repo
  ripgrep
  ros
  rsync
  ruby
  rust
  rvm
  safe-paste
  salt
  samtools
  sbt
  scala
  scd
  screen
  scw
  sdk
  sfdx
  sfffe
  shell-proxy
  shrink-path
  singlechar
  spring
  sprunge
  ssh-agent
  stack
  sublime
  sublime-merge
  sudo
  supervisor
  suse
  svcat
  svn
  svn-fast-info
  swiftpm
  symfony
  symfony2
  systemadmin
  systemd
  taskwarrior
  term_tab
  terminitor
  terraform
  textastic
  textmate
  thefuck
  themes
  thor
  tig
  timer
  tmux
  tmux-cssh
  tmuxinator
  torrent
  transfer
  tugboat
  ubuntu
  ufw
  universalarchive
  urltools
  vagrant
  vagrant-prompt
  vault
  vi-mode
  vim-interaction
  virtualenv
  virtualenvwrapper
  volta
  vscode
  vundle
  wakeonlan
  wd
  web-search
  wp-cli
  xcode
  yarn
  yii
  yii2
  yum
  z
  zbell
  zeus
  zsh-interactive-cd
  zsh-navigation-tools
)


chmod 00400 $HOME/.ssh/id_rsa

source $ZSH/oh-my-zsh.sh

# User configuration

export MANPATH="/bin/man:$MANPATH"

# You may need to manually set your language environment
export LANG=ru_RU.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi

# Compilation flags
export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="mate ~/.zshrc"
alias ohmyzsh="mate ~/.oh-my-zsh"
alias h="heroku"
alias p="python3"

export NVM_DIR="$HOME/.nvm"

[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completio