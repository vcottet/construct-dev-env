dir=$(dirname "$0")/files

service_file="$dir/ssh-agent.service"
current_service_file="$HOME/.config/systemd/user/ssh-agent.service"
cmp -s "$service_file" "$current_service_file" > /dev/null \
&& systemctl --user is-active --quiet ssh-agent
