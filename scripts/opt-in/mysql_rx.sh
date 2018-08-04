echo
echo "=== Installing mysql ==="
brew install mysql

## MySQL 5.7 (2018-05-19)
# Installed via `Homebrew` at `usr/local/Cellar/mysql/5.7.20`
#
# To connect run:
#    mysql -uroot
#
# To have launchd start mysql now and restart at login:
#  brew services start mysql
#
# Or, if you don't want/need a background service you can just run:
#  mysql.server start