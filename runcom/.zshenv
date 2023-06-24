# See https://scriptingosx.com/2019/06/moving-to-zsh-part-2-configuration-files/
export ZDOTDIR=~/.zsh

# Handle Mac platforms
CPU=$(uname -p)
if [[ "$CPU" == "arm" ]]; then
    export PATH="/opt/homebrew/bin:/opt/homebrew/sbin:$PATH"
    export LD_LIBRARY_PATH=/opt/homebrew/lib
    export PKG_CONFIG_PATH=/opt/homebrew/lib/pkgconfig
    alias oldbrew=/usr/local/bin/brew

    # aclocal settings
    export ACLOCAL_FLAGS="-I /opt/homebrew/share/aclocal"
else
    export PATH="/usr/local/bin:/usr/local/sbin:$PATH"
    export LD_LIBRARY_PATH=/usr/local/lib
    export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig

    # aclocal settings
    export ACLOCAL_FLAGS="-I /usr/local/share/aclocal"
fi


# User specific environment and startup programs
#### EDITOR ####
EDITOR=$(which emacs)
export EDITOR

#### PATH ####
export PATH=$PATH:$HOME/.local/bin

#### LD_LIBRARY_PATH ####
export LD_LIBRARY_PATH=$HOME/.local/lib
source "$HOME/.cargo/env"

#### pkgconfig settings ####
export PKG_CONFIG_PATH=$HOME/.local/lib/pkgconfig:$HOME/.local/lib/efscape/pkgconfig:$PKG_CONFIG_PATH

#### PYENV ####
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
. "$HOME/.cargo/env"
