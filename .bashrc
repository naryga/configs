
alias site="cd ~/Sites"
alias docs="cd ~/Documents"
alias down="cd ~/Downloads"
alias pix="cd ~/Picutres"
alias desk="cd ~/Desktop"
alias rail="site; cd ./rails"
alias pinn="rail; cd ./pinnacol"
alias froi="pinn; cd ./online_froi"
alias sfroi="froi; cd ./spec/dummy"
alias apps="pinn; cd ./online_apps"
alias assets="pinn; cd ./online_assets"

# Aliases for common tasks

alias l="ls -la"
alias ll="ls -l"
alias la="ls -a"

# aliases for git

alias gs="git status "
alias ga="git add "
alias gb="git branch "
alias gc="git commit"
alias gd="git diff"
alias go="git checkout "
alias gk="gitk --all&"
alias gx="gitx --all"

alias got="git "
alias get="git "

# Dev junk

alias clog="tail -f #{ARGV[0]} | ruby -p -rYAML -e '$_.gsub!(/(?<=Parameters:) (.+)/) { $1 + \"\n=====\n\" + YAML.dump(eval($1)) }'"

# environment variables

export TAP_EMAIL="nathan.garza@pinnacol.com"
export TAP_USER="garzan"
export TAP_USERNAME="Nathan Garza"

ORACLE_CLIENT_PATH=/usr/local/instantclient-10.2.0.4.0
ORACLE_SDK_PATH=${ORACLE_CLIENT_PATH}/sdk/include
export DYLD_LIBRARY_PATH=$DYLD_LIBRARY_PATH:$ORACLE_CLIENT_PATH:$ORACLE_SDK_PATH
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$ORACLE_CLIENT_PATH:$ORACLE_SDK_PATH
export PATH=/usr/local/bin:$PATH:$ORACLE_CLIENT_PATH
export LIBRARY_PATH=$LIBRARY_PATH:$ORACLE_CLIENT_PATH:$ORACLE_SDK_PATH # Needed?
export ORACLE_HOME=$ORACLE_CLIENT_PATH
export SQLPATH=$HOME:$ORACLE_CLIENT_PATH
export TNS_ADMIN=$ORACLE_CLIENT_PATH
export PATH="$PATH:$HOME/toolbox/bin"
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

if [[ -s "$HOME/.rvm/scripts/rvm" ]]; then
   source "$HOME/.rvm/scripts/rvm"
fi

# export NLS_LANG=AMERICAN_AMERICA.AL32UTF8
export NLS_LANG=AMERICAN_AMERICA.UTF8
