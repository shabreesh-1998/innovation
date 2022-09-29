location=$(dirname $0)

echo "Enter system/root password:"
read -s rootPassword

echo "Enter the version of ruby to install, followed by [ENTER]:"
read rubyVersion

echo "Enter the version of node to install, followed by [ENTER]:"
read nodeVersion

echo "Enter the version of maven to install, followed by [ENTER]:"
read mvnVersion

echo "Enter the version of python to install, followed by [ENTER]:"
read pythonVersion

yes "" | /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo $rootPassword | sudo -kS chown $(whoami) $(brew --prefix)/*
brew install gpg
brew update

chmod u+x ${location}/rubyinstaller.command
chmod u+x ${location}/nodeInstaller.command
chmod u+x ${location}/mvninstaller.command
chmod u+x ${location}/pythoninstaller.command

echo "${location}/rubyinstaller.command $rubyVersion ; rm /tmp/tmp1.sh" > /tmp/tmp1.sh ; chmod +x /tmp/tmp1.sh ; open -a Terminal /tmp/tmp1.sh
echo "${location}/nodeInstaller.command $nodeVersion ; rm /tmp/tmp2.sh" > /tmp/tmp2.sh ; chmod +x /tmp/tmp2.sh ; open -a Terminal /tmp/tmp2.sh
echo "${location}/mvninstaller.command $mvnVersion ; rm /tmp/tmp3.sh" > /tmp/tmp3.sh ; chmod +x /tmp/tmp3.sh ; open -a Terminal /tmp/tmp3.sh
echo "${location}/pythoninstaller.command $pythonVersion ; rm /tmp/tmp4.sh" > /tmp/tmp4.sh ; chmod +x /tmp/tmp4.sh ; open -a Terminal /tmp/tmp4.sh

exit