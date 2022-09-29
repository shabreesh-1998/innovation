brew install pyenv
pyenv install $1
pyenv global $1
echo "export PATH=\"\${HOME}/.pyenv/shims:\${PATH}\"" >> ~/.zshrc
osascript -e 'display dialog "Python Installation successful"'