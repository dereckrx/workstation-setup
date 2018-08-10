#!/usr/bin/env bash
echo
echo "Configuring bash with bash-it"
cp files/dircolors.ansi-dark ~/.dircolors
cp files/.inputrc ~/.inputrc

echo "=== Installing bash_it ==="
rm -rf ~/.bash_it
git clone https://github.com/Bash-it/bash-it.git ~/.bash_it
cp files/bobby_pivotal/rx.theme.bash ~/.bash_it/themes/bobby/bobby.theme.bash


# Overwrite the default .bash_profile template so it doesn't tash it
cp files/bash_profile.template.bash ${HOME}/.bash_it/template/bash_profile.template.bash

~/.bash_it/install.sh --silent
source ~/.bash_profile