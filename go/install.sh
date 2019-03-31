export GOROOT=~/.g
export GOPATH=~/Dev/Projets/go-projects
mkdir -p "$GOROOT"
mkdir -p "$GOPATH"
curl -sSL https://git.io/g-install | bash -s -- -y
PATH="$GOPATH/bin:$PATH"
g install latest

plugin=$(dirname "$0")/files/go
zsh_plugins_dir="$HOME/.oh-my-zsh/custom/plugins/"
cp -r "$plugin" "$zsh_plugins_dir"
