echo
echo "Installing Git and associated tools"
brew install git

echo
echo "Setting global Git configurations"
git config --global core.editor /usr/bin/vim
git config --global transfer.fsckobjects true