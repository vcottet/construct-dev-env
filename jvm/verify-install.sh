[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
command -v sdk > /dev/null \
&& command -v java > /dev/null \
&& command -v gradle > /dev/null \
&& command -v mvn > /dev/null \
&& test -d "$HOME/.oh-my-zsh/custom/plugins/sdkman"> /dev/null