eval "$(/opt/homebrew/bin/brew shellenv)"
fish_add_path ~/.cargo/bin
fish_add_path ~/Builds/flutter/bin/
alias rlox="cd ~/Programming/crafting-interpreters/rlox/src"
alias rustboy="cd ~/Programming/rustboy/rustboy-core/src/"
set fish_greeting
bind \cH 'backward-kill-word'
starship init fish | source
krabby random 1-5 --no-gmax --no-regional
