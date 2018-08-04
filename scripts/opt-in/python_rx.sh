# Sat May 19 2018 12:15 PM
echo
echo "=== Installing python ==="
brew install python

#-------------------------------------------------

# 2017-11-09: python3 installed via homebrew, pip (package man) as well.
#
#  * `python3 <command>` -> /usr/local/Cellar/python3/3.6.3
#  * `pip3 install <package>` -> /usr/local/lib/python3.6/site-packages
#  * Pip, setuptools, and wheel have been installed
#    - update with `$ pip3 install --upgrade pip setuptools wheel`

### Older
#pyenv (similar to rvm)
#set local version `$ pvm local 2.7.10`
#  /usr/local/homebrew_install/var/pyenv/shims/python
#External Packages (gems): `$ easy_install <package_name>`
#  * pip is prefered over easy_install now
#see: Evernote: Python (pluralsight) Quick Refs
#
#To make this the default Python or Python 2 (i.e., the version run by the 'python' or 'python2' commands), run one or both of:
#    sudo port select --set python python27
#    sudo port select --set python2 python27
