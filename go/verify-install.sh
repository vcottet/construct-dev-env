export GOPATH="$HOME/Dev/Projects/go-projects"
export GOROOT="$HOME/.g"
PATH="$GOPATH/bin:$PATH"
command -v g > /dev/null \
&& command -v go > /dev/null \
&& test -d "$HOME/.oh-my-zsh/custom/plugins/go"> /dev/null
