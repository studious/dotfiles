# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="stufraser"
unsetopt correct_all

plugins=(git git-flow node npm stufraser)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export RBENV_ROOT=/usr/local/opt/rbenv
export RUBYLIB=/etc/puppet/modules/cloud_provisioner/lib:$RUBYLIB
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# for Homebrew installed rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
