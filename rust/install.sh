curl https://sh.rustup.rs -sSf | sh -s -- -y

plugin=$(dirname "$0")/files/rust
zsh_plugins_dir="$HOME/.oh-my-zsh/custom/plugins/"
cp -r "$plugin" "$zsh_plugins_dir"