echo "--- Homebrew ----------------------------------------------"

if hash brew 2>/dev/null; then
  echo "Homebrew is already installed!"
else
  echo "Installing Homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo
echo "Ensuring you have the latest Homebrew..."
echo "brew update"
brew update

echo
echo "Ensuring your Homebrew directory is writable..."
sudo chown -R $(whoami) /usr/local/bin

echo
echo "Installing Homebrew services..."
echo "(Enables things like 'brew services start mysql')"
echo "brew tap homebrew/services"
brew tap homebrew/services

echo
echo "Adding Pivotal tap to Homebrew"
echo "This a brew tap repository containing a collection of 'formulae' for Pivotal products."
echo "brew tap pivotal/tap"
brew tap pivotal/tap

echo
echo "Upgrading existing brews..."
echo "brew upgrade"
brew upgrade

echo "Cleaning up your Homebrew installation..."
echo "brew cleanup"
brew cleanup

echo
echo "Adding Homebrew's sbin to your PATH..."
echo 'export PATH="/usr/local/sbin:$PATH"' >> ~/.bash_profile

#-------------------------------------------------
## Homebrew
#$ brew -h
#/usr/local/homebrew (where it was installed)
#
#adds: "brew" to "/usr/local/bin" # Main command
#create: /usr/local/sbin
#create: /usr/local/Homebrew
#create: /usr/local/Cellar # Installs packages here (beer cellar)
#create: /usr/local/Frameworks
#create: /usr/local/opt
#
#create: /usr/local/etc/bash_completion.d/ and add "brew"
#create: /usr/local/share/doc/ and add "homebrew"
#add: "brew.1" to /usr/local/share/man/man1/
#
#create: /usr/local/share/zsh
#  * create: /usr/local/share/zsh/site-functions/
#    * add: "_brew"
#create: /usr/local/var