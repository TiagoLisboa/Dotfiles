if status is-interactive
    # Commands to run in interactive sessions can go here
end

source ~/.asdf/asdf.fish

alias ls="exa"
# alias cat="bat"
alias top="bashtop"
alias grep="rg"
alias df="ncdu"
alias find="fd"
alias sail="./vendor/bin/sail"

set -gx NNN_FIFO /tmp/nnn.fifo
set -Ux fish_tmux_autostart true
set -Ux fish_tmux_autoconnect false

