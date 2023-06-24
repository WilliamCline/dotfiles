# .zshrc
# author:	Jon Cline <clinej@alumni.stanford.edu>
# revised:	24 Jun 2023
# created:	24 Jun 2023
#
# See https://scriptingosx.com/2019/06/moving-to-zsh-part-3-shell-options/
##############################################################################

# Source global definitions
export CLICOLOR=1

### start of aliases ##########################################################
#. ${ZDOTDIR:-$HOME}/.zsh_aliases

# Some useful aliases.
alias rm='rm -i'
alias mv='mv -i'
alias cp='cp -i'
alias l="ls -l "
alias ll="ls -l"
alias ls="ls -CF"


### End of aliases ############################################################


# Case Insensitive Globbing
setopt NO_CASE_GLOB

# Automatic CD
setopt AUTO_CD

# Shell History
export HISTFILE=${ZDOTDIR:-$HOME}/.zsh_history


### JAVA environment
echo 'export PATH="$HOME/.jenv/bin:$PATH"'
eval "$(jenv init -)"
export JAVA_HOME="$HOME/.jenv/versions/`jenv version-name`"
alias jenv_set_java_home='export JAVA_HOME="$HOME/.jenv/versions/`jenv version-name`"'

### pyenv
eval "$(pyenv init --path)"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
export PATH=$(pyenv root)/shims:$PATH

### GitHub personal access token (generated 24 Jun 2023)
#export HOMEBREW_GITHUB_API_TOKEN=

