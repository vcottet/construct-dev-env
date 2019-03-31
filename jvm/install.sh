curl -sSL http://get.sdkman.io | bash

sdks=( "java 8.0.202-zulu" "gradle" "maven")

[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
export sdkman_auto_answer=true
for sdk in "${sdks[@]}"
do
	sdk install $sdk
done

plugin=$(dirname "$0")/files/sdkman
zsh_plugins_dir="$HOME/.oh-my-zsh/custom/plugins/"
cp -r "$plugin" "$zsh_plugins_dir"
