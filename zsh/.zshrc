# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# remove windows paths from the path
export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"

# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh
#
# # Set name of the theme to load.
# # Look in ~/.oh-my-zsh/themes/
# # Optionally, if you set this to "random", it'll load a random theme each
# # time that oh-my-zsh is loaded.
ZSH_THEME="powerlevel10k/powerlevel10k"
source $ZSH/custom/themes/powerlevel10k/prompt_powerlevel10k_setup
#ZSH_THEME="robbyrussell"
#
#POWERLEVEL9K_MODE='awesome-fontconfig'
#
# # Uncomment the following line to use case-sensitive completion.
# # CASE_SENSITIVE="true"
#
# # Uncomment the following line to use hyphen-insensitive completion. Case
# # sensitive completion must be off. _ and - will be interchangeable.
# # HYPHEN_INSENSITIVE="true"
#
# # Uncomment the following line to disable bi-weekly auto-update checks.
# # DISABLE_AUTO_UPDATE="true"
#
# # Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13
#
# # Uncomment the following line to disable colors in ls.
# # DISABLE_LS_COLORS="true"
#
# # Uncomment the following line to disable auto-setting terminal title.
# # DISABLE_AUTO_TITLE="true"
#
# # Uncomment the following line to enable command auto-correction.
# # ENABLE_CORRECTION="true"
#
# # Uncomment the following line to display red dots whilst waiting for completion.
# # COMPLETION_WAITING_DOTS="true"
#
# # Uncomment the following line if you want to disable marking untracked files
# # under VCS as dirty. This makes repository status check for large repositories
# # much, much faster.
# # DISABLE_UNTRACKED_FILES_DIRTY="true"
#
# # Uncomment the following line if you want to change the command execution time
# # stamp shown in the history command output.
# # The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# # HIST_STAMPS="mm/dd/yyyy"
#
# # Would you like to use another custom folder than $ZSH/custom?
# # ZSH_CUSTOM=/path/to/new-custom-folder
#
# # Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# # Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
#
# # You may need to manually set your language environment
# # export LANG=en_US.UTF-8
#
# # Preferred editor for local and remote sessions
# # if [[ -n $SSH_CONNECTION ]]; then
# #   export EDITOR='vim'
# # else
# #   export EDITOR='mvim'
# # fi
#
# # Compilation flags
# # export ARCHFLAGS="-arch x86_64"
#
# # ssh
# # export SSH_KEY_PATH="~/.ssh/dsa_id"
#
# # Set personal aliases, overriding those provided by oh-my-zsh libs,
# # plugins, and themes. Aliases can be placed here, though oh-my-zsh
# # users are encouraged to define aliases within the ZSH_CUSTOM folder.
# # For a full list of active aliases, run `alias`.
# #
# # Example aliases
# # alias zshconfig="mate ~/.zshrc"
# # alias ohmyzsh="mate ~/.oh-my-zsh"

## exported variables ##
export WINHOME="/mnt/c/Users/diego"

## adding to path ##
export PATH="/usr/local/bin:$PATH"
export PATH="$HOME/bin:$PATH"

## Aliases ##
alias get-gems="gem query --local"
alias gemset="rvm gemset"
alias dockergc="docker system prune -f"
alias code="/c/Users/diego/AppData/Local/Programs/Microsoft\ VS\ Code/bin/code"
alias code-beta="/c/Users/diego/AppData/Local/Programs/Microsoft\ VS\ Code\ Insiders/bin/code-insiders"
alias clip="/c/Windows/System32/clip.exe"
alias clip.exe="/c/Windows/System32/clip.exe"
alias cmd.exe="/c/Windows/System32/cmd.exe"
alias powershell.exe="/mnt/c/Windows/System32/WindowsPowerShell/v1.0/powershell.exe"
alias vim="nvim"
alias vi="nvim"
alias tf="terraform"
alias d="docker"
alias dc="docker-compose"
alias awslocal="aws --endpoint-url=http://localhost:4566 --profile=local --region=us-east-1"

# pyenv #
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# tfenv #
export PATH="$HOME/.tfenv/bin:$PATH"

# ssh-agent #
echo "starting ssh-agent"
eval `ssh-agent -s`

echo "adding keys"
ssh-add ~/.ssh/id_rsa > /dev/null
ssh-add ~/.ssh/vagrant_key > /dev/null

echo "keys added: "
ssh-add -l

# goenv #
export PATH="$HOME/.goenv/bin:$PATH"
eval "$(goenv init -)"
export PATH="$GOROOT/bin:$PATH"
export PATH="$GOPATH/bin:$PATH"

# rvm
export PATH="$GEM_HOME/bin:$HOME/.rvm/bin:$PATH"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/diego/.sdkman"
[[ -s "/home/diego/.sdkman/bin/sdkman-init.sh" ]] && source "/home/diego/.sdkman/bin/sdkman-init.sh"
