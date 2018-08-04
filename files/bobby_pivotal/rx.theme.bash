#!/usr/bin/env bash

GIT_THEME_PROMPT_DIRTY=" ${red}✗"
GIT_THEME_PROMPT_CLEAN=" ${bold_green}✓"
GIT_THEME_PROMPT_PREFIX=" "
GIT_THEME_PROMPT_SUFFIX="${green}"

## Format
# https://github.com/Bash-it/bash-it/blob/master/themes/base.theme.bash
### Line one
# batter_char - Batter %
# \h - Host, ex: Derecks-MacBook-Pro
# \w - Working directory, ex: ~/workspace/workstation-setup

### Line two
# scm_char - Source Code Version control Symbol, ex: ± git, svn, none, etc
# scm_prompt_info - ex: |master U:2 ?:1 ✗|

function prompt_command() {
    $(scm_prompt_info >/dev/null 2>&1)
    PS1="\n${purple}\h${green} ${green}\w ${yellow}$(_git-branch)\n${green}\W${SCM_STATE} ${green}→${reset_color} "
}

PROMPT_COMMAND=prompt_command;
