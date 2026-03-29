#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'

powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
. /usr/share/powerline/bindings/bash/powerline.sh

export PATH="$PATH:/home/josh/Documents/Honours-Research-Project/development/SnapPy/venv/bin/"
export LUA_PATH="/home/josh/.config/nvim/lua/custom/picker.lua;;"

alias config='/usr/bin/git --git-dir=/home/josh/.cfg/ --work-tree=/home/josh'

# file servers
alias onedrive-desktop='rclone sync --progress Documents/ onedrive:Desktop/ '
alias onedrive-pictures='rclone sync --progress /media/photos/3.\ Collections/ onedrive:Pictures/'

caddy_cert='--ca-cert ~/Documents/caddy-local-authority--ecc-intermediate.pem'
alias seafile-desktop="rclone sync --progress Documents/ seafile:Documents/"
alias seafile-pictures="rclone sync --progress /media/photos/ seafile:Photography/"

backup_dirs="$HOME/books $HOME/portfolio $HOME/printing $HOME/programming $HOME/resume $HOME/study"
alias proton-backup="rclone sync --progress $backup_dirs proton:"

# ruby
export GEM_HOME="$(gem env user_gemhome)"
export PATH="$PATH:$GEM_HOME/bin"

# haskell
export PATH="$HOME/.cabal/bin:$HOME/.ghcup/bin:$PATH"

# go 
export PATH="$HOME/go/bin:$PATH"

# openjfx
export PATH_TO_FX="$HOME/Downloads/openjfx/javafx-sdk-22.0.2/lib/"

# maven
export PATH="$PATH:$HOME/Downloads/apache-maven-3.9.8/bin/"

# fzf 
eval "$(fzf --bash)"

# bambulab
alias bambu-studio-mesa='__GLX_VENDOR_LIBRARY_NAME=mesa __EGL_VENDOR_LIBRARY_FILENAMES=/usr/share/glvnd/egl_vendor.d/50_mesa.json bambu-studio'

# raspberry pi 
export PICO_SDK_PATH=$HOME/software/pico/pico-sdk/

# esp32 
alias get-idf='. $HOME/software/esp-idf/export.sh'

# freecad
alias freecad-wayland='QT_QPA_PLATFORM=xcb freecad'

# export DEBUGINFOD_URLS="https://debuginfod.archlinux.org"
