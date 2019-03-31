dir=$(dirname "$0")/files

config_file="$dir/config"
current_config_file="$HOME/.ssh/config"
cmp -s "$config_file" "$current_config_file" > /dev/null \
&& test -e "$HOME/.ssh/id_rsa_github" \
&& test -e "$HOME/.ssh/id_rsa_github.pub" \
&& test -e "$HOME/.ssh/id_rsa_gitlab" \
&& test -e "$HOME/.ssh/id_rsa_gitlab.pub"