#!/usr/bin/env bash

#### DONT EDIT THIS FILE ####
## Thu Aug 9 2018 8:06 PM
# This file overwrites the default bash-it .bash_profile template

#To show the available aliases/completions/plugins, type one of the following:
#  bash-it show aliases
#  bash-it show completions
#  bash-it show plugins

# Path to the bash it configuration
export BASH_IT="{{BASH_IT}}"

# Lock and Load a custom theme file
# location /.bash_it/themes/
export BASH_IT_THEME='bobby'

# Set this to false to turn off version control status checking within the prompt for all themes
export SCM_CHECK=true

# Load Bash It
source "$BASH_IT"/bash_it.sh

## Sun May 6 2018 9:47 PM Stuff from original bash_profie
# Don't add to this file, instead add to either .profile or .bashrc

# Load .profile, containing login, non-bash related initializations.
source ~/.profile

# Load .bashrc, containing non-login related bash initializations.
source ~/.bashrc