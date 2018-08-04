#!/usr/bin/env bash

#### Overview
# * install homebrew
# * install configuration-bash (bash-it)
# * install tap caskroom/cask
# * install github desktop (cask)
# * install applications-common
# * setup mac-os configuration

# Fail immediately if any errors occur
set -e
echo
echo "-----------------------------------------"
echo "Workstation setup!"
echo "-----------------------------------------"

echo "Caching password..."
sudo -K
sudo true;
clear

MY_DIR="$(dirname "$0")"
echo "MY_DIR = ${MYDIR}"

# Note: Homebrew needs to be set up first
echo "=== Installing Homebrew ==="
source ${MY_DIR}/scripts/common/homebrew_rx.sh

echo "=== Installing configuration-bash.sh (bash-it) ==="
source ${MY_DIR}/scripts/common/configuration-bash_rx.sh

# Place any applications that require the user to type in their password here
echo "=== Installing Cask ==="
brew tap caskroom/cask # Cask installs binarys (no more drag/drop App icons)

echo "=== Running common scripts ==="
source ${MY_DIR}/scripts/common/git_rx.sh
source ${MY_DIR}/scripts/common/git-aliases_rx.sh
source ${MY_DIR}/scripts/common/applications-common_rx.sh
source ${MY_DIR}/scripts/common/configuration-osx_rx.sh
source ${MY_DIR}/scripts/common/configurations_rx.sh

echo "=== Running opt-in scripts ==="
source ${MY_DIR}/scripts/opt-in/node_rx.sh
source ${MY_DIR}/scripts/opt-in/docker_rx.sh
source ${MY_DIR}/scripts/opt-in/ruby_rx.sh

source ${MY_DIR}/scripts/intellij_rx.sh

echo
echo "-----------------------------------------"
echo "Done!"
echo "-----------------------------------------"
