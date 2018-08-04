#!/usr/bin/env bash

# Don't stop if docker fails
set +e

# Docker
brew cask install docker
open /Applications/Docker.app

set -e

#-------------------------------------------------
## Docker (2018-05-19)
#Docker installed via homebrew: /usr/homebrew_install/bin/docker
#/usr/local/bin
#  * docker-compose