echo
echo "=== Installling Postgresql ==="

brew install postgresql

## Postgresql 9.3
### Sun Dec 10 2017 4:09 PM
#Installed: brew install postgresql
#
#Installed: Macports /opt/local/bin/postgres
#Default DB: /opt/local/var/db/postgresql93/defaultdb (owned by user postgres)
#
#To create a database instance, after install do
# sudo mkdir -p /opt/local/var/db/postgresql93/defaultdb
# sudo chown postgres:postgres /opt/local/var/db/postgresql93/defaultdb
# sudo su postgres -c '/opt/local/lib/postgresql93/bin/initdb -D /opt/local/var/db/postgresql93/defaultdb'
#
#Start Server:
#  # 1. Switch to postgres user
#  # 2. Run the postgres command with -D option (Location of the data)
#  $ sudo su postgres -c '/opt/local/lib/postgresql93/bin/postgres -D /opt/local/var/db/postgresql93/defaultdb'
#
#  # Simpler syntax
#  $ pg_ctl start -l logfile # start server in background and use provided log file
#
#List Databases and Login (or psql --help for more options)
#  $ psql -l
#  $ psql -d <database_name> -U postgres # login as postgres user
#  > \q # exit
#