# add private bin to PATH
test -d "$HOME/bin" &&
PATH="$HOME/bin:$PATH"

# add rust to PATH
test -d "$HOME/.cargo/bin" &&
PATH="$HOME/.cargo/bin:$PATH"


# if running bash
test -n "$BASH_VERSION" &&
# include .bashrc if it exists
test -f "$HOME/.bashrc" &&
. "$HOME/.bashrc"

