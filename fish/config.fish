if status is-interactive
    # Commands to run in interactive sessions can go here
end

set GOPATH $HOME/go
set GOBIN $GOPATH/bin
set PATH $HOME/.local/bin $PATH
set PATH $GOBIN $PATH

alias "sudo" "sudo -E"
alias "nano" "nvim"