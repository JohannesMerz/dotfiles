# Path to your oh-my-zsh installation.
export ZSH=/Users/johannesmerz/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="cobalt2"

zstyle ':completion:*' special-dirs true

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(wd git docker docker-compose)

# User configuration

# export PATH="/usr/bin:/bin:/usr/sbin:/sbin:$PATH"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias dockerCleanup="docker rmi $(docker images | grep '<none>' | awk '{print $3}')"
alias dockerps="docker ps --format 'table {{.ID}}\t  {{.Names}}\t {{.Status}}\t {{.Ports}}'"
alias run="/Users/johannesmerz/Documents/workspace/eye-square/in-context-testing/bin/run"
hash -d in-context='/Users/johannesmerz/Documents/workspace/eye-square/in-context-testing'
hash -d harmonized='/Users/johannesmerz/Documents/workspace/hyphe/harmonized'

ssh-add -A &> /dev/null

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/johannesmerz/Downloads/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/johannesmerz/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/johannesmerz/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then source '/Users/johannesmerz/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /Users/johannesmerz/Documents/workspace/hyphe/bojagi/bojagi/server/upload-api/node_modules/tabtab/.completions/serverless.zsh ]] && . /Users/johannesmerz/Documents/workspace/hyphe/bojagi/bojagi/server/upload-api/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /Users/johannesmerz/Documents/workspace/hyphe/bojagi/bojagi/server/upload-api/node_modules/tabtab/.completions/sls.zsh ]] && . /Users/johannesmerz/Documents/workspace/hyphe/bojagi/bojagi/server/upload-api/node_modules/tabtab/.completions/sls.zsh
# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[[ -f /Users/johannesmerz/Documents/workspace/hyphe/bojagi/bojagi/server/webhook-servive/node_modules/tabtab/.completions/slss.zsh ]] && . /Users/johannesmerz/Documents/workspace/hyphe/bojagi/bojagi/server/webhook-servive/node_modules/tabtab/.completions/slss.zsh
# fnm
eval "$(fnm env --multi)"


SPACESHIP_PROMPT_ORDER=(
  time          # Time stamps section
  user          # Username section
  dir           # Current directory section
  host          # Hostname section
  git           # Git section (git_branch + git_status)
#  hg            # Mercurial section (hg_branch  + hg_status)
  package       # Package version
  node          # Node.js section
#  ruby          # Ruby section
#  elixir        # Elixir section
#  xcode         # Xcode section
#  swift         # Swift section
#  golang        # Go section
#  php           # PHP section
#  rust          # Rust section
#  haskell       # Haskell Stack section
 # julia         # Julia section
  docker        # Docker section
  aws           # Amazon Web Services section
 # venv          # virtualenv section
 # conda         # conda virtualenv section
 # pyenv         # Pyenv section
 # dotnet        # .NET section
  #ember         # Ember.js section
 # kubecontext   # Kubectl context section
  terraform     # Terraform workspace section
  exec_time     # Execution time
  line_sep      # Line break
  battery       # Battery level and status
  vi_mode       # Vi-mode indicator
  jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)
SPACESHIP_TIME_SHOW=true
SPACESHIP_AWS_SYMBOL="☁️· "    


  # Set Spaceship ZSH as a prompt
  autoload -U promptinit; promptinit
  prompt spaceship
