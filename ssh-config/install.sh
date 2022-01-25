dir=$(dirname "$0")/files

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

function get_bitwarden_ids {
    local ssh_key=$1
    local jq_filter='.[0] | .id, (.attachments[] | select( .fileName == "'id_rsa_${ssh_key}'" or .fileName == "'id_rsa_${ssh_key}.pub'") | .id, .fileName)'
    bw list items --search "${ssh_key}-ssh" | jq "$jq_filter" --raw-output
}

[[ -d "$HOME/.ssh" ]] || mkdir "$HOME/.ssh"

# login to bitwarden
export BW_SESSION=`bw login --raw`

for ssh_key in "github" "gitlab"
do
    ids=( $(get_bitwarden_ids $ssh_key) )
    bw get attachment ${ids[1]} --itemid ${ids[0]} --output "$HOME/.ssh/${ids[2]}"
    chmod 600 "$HOME/.ssh/${ids[2]}"
    bw get attachment ${ids[3]} --itemid ${ids[0]} --output "$HOME/.ssh/${ids[4]}"
    chmod 600 "$HOME/.ssh/${ids[4]}"
done

config_file="$dir/config"
current_config_file="$HOME/.ssh/config"
cp "$config_file" "$current_config_file"
chmod 600 "$current_config_file"

add_ssh_key_script="$dir/add-ssh-key"
add_ssh_keys_script="$dir/add-ssh-keys"
current_bin_dir="$HOME/.local/bin"
mkdir -p "$current_bin_dir"
cp "$add_ssh_key_script" "$current_bin_dir"
cp "$add_ssh_keys_script" "$current_bin_dir"

