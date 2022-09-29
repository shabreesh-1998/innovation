brew install nvm
source $(brew --prefix nvm)/nvm.sh
echo "source $(brew --prefix nvm)/nvm.sh">> ~/.zshrc
nvm install $1
osascript -e 'display dialog "Node Installation successful"'