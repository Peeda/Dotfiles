fish_add_path ~/.config/emacs/bin/
fish_add_path ~/builds/*
fish_add_path ~/.local/share/nvim/mason/bin/
alias rlox="cd ~/Programming/crafting-interpreters/rlox/src"
alias rustboy="cd ~/Programming/rustboy/rustboy-core/src/"
alias ls="exa --icons"
set fish_greeting
bind \cH 'backward-kill-word'
starship init fish | source
krabby random 1-5 --no-gmax --no-regional
