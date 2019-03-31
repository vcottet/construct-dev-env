[[ -s "$HOME/.cargo/env" ]] && source "$HOME/.cargo/env"
command -v rustup > /dev/null \
&& command -v cargo > /dev/null \
&& command -v rustc > /dev/null \
&& test -d "$HOME/.oh-my-zsh/custom/plugins/rust"> /dev/null
