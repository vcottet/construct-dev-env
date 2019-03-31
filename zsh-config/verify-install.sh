dir=$(dirname "$0")/files

zshrc_file="$dir/zshrc"
current_zshrc_file="$HOME/.zshrc"
cmp -s "$zshrc_file" "$current_zshrc_file"
