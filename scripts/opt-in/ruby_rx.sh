#!/usr/bin/env bash

RUBY_VERSION=2.5.1

echo
echo "Installing Ruby tools and Ruby ${RUBY_VERSION}"
brew install rbenv

cp files/.irbrc ~/.irbrc # Keep history in irb sessions

if [ -x "$(which bash-it)" ]; then
    bash-it enable plugin rbenv
else
    echo "bash-it not installed."
fi

# ruby-build is needed for installing ruby versions
# * ruby-build requires readline
brew install readline

eval "$(rbenv init -)"

rbenv install ${RUBY_VERSION} --skip-existing
rbenv global  ${RUBY_VERSION}

gem install bundler

rbenv rehash