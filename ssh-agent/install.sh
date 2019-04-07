dir=$(dirname "$0")/files

[[ -d "$HOME/.config/systemd/user" ]] || mkdir -p "$HOME/.config/systemd/user"

service_file="$dir/ssh-agent.service"
current_service_file="$HOME/.config/systemd/user/ssh-agent.service"
cp "$service_file" "$current_service_file"

chmod 600 "$HOME/.config/systemd/user/ssh-agent.service"

systemctl --user enable ssh-agent.service
systemctl --user start ssh-agent.service
