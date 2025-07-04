if status is-interactive
    # Commands to run in interactive sessions can go here
end

set CARGOBIN $HOME/.cargo/bin
set PATH $HOME/.local/bin $PATH

alias sudo "sudo -E"
alias nano nvim

starship init fish | source
