dir=$(dirname "$0")/files

zshrc_file="$dir/zshrc"
current_zshrc_file="$HOME/.zshrc"
cp "$zshrc_file" "$current_zshrc_file"

aliases_file="$dir/aliases.zsh"
current_aliases_file="$HOME/.oh-my-zsh/custom/aliases.zsh"
cp "$aliases_file" "$current_aliases_file"