brew install maven@$1
echo 'export PATH="/usr/local/opt/maven@$1/bin:$PATH"' >> ~/.zshrc
osascript -e 'display dialog "Maven Installation successful"'
