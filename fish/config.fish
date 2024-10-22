if status is-interactive
    # Commands to run in interactive sessions can go here
end

set GOPATH $HOME/go
set GOBIN $GOPATH/bin
set CARGOBIN $HOME/.cargo/bin
set PATH $HOME/.local/bin $PATH
set PATH $GOBIN $PATH
set PATH $CARGOBIN $PATH

alias "sudo" "sudo -E"
alias "nano" "nvim"

