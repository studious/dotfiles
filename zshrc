# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="stufraser"
unsetopt correct_all

plugins=(git git-flow node npm stufraser lp)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
# export RBENV_ROOT=/usr/local/opt/rbenv
export PATH=/Users/stu/bin:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin
export NODE_PATH=/usr/local/lib/node_modules

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# for Homebrew installed rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
