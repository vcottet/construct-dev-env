export NVM_DIR="$HOME/.nvm"
[[ -d "$NVM_DIR" ]] || mkdir "$NVM_DIR"
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | bash
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
nvm install --lts
