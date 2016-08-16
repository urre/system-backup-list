#! /bin/bash

#-------------------------------------------------------------------
# VVV Database backup
# Make backups of all VVV databases -> Copy to Dropbox
# Usage: ./vvv-mysql-backup.sh
# Cron usage: 0 09 * * 1-5 /mypath && ./vvv-mysql-backup.sh >/dev/null 2>&1
#------------------------------------------------------------------

# Paths
username=$USER;
vvv_path="/Users/${username}/projects/vvv"
LOCAL_BACKUP_DIR="/Users/${username}/projects/vvv/www/db-backups/"
DROPBOX="/Users/${username}/Dropbox/backup/system-backup-list/db-backups"

# 1. Make db backups inside the VVV. Separate files for each database. Use gzip.
# Notes. Point to your VVV ip and change the credentials you need. The default mysql user/password is root/root.
ssh -i ${vvv_path}/.vagrant/machines/default/virtualbox/private_key vagrant@192.168.50.4  <<'ENDSSH'

TIMESTAMP=$(date +"%F")
BACKUP_DIR="/srv/www/db-backups/"
MYSQL_USER="root"
MYSQL=/usr/bin/mysql
MYSQL_PASSWORD="root"
MYSQLDUMP=/usr/bin/mysqldump

sudo mkdir -p "$BACKUP_DIR/"
sudo chmod -R 777 "$BACKUP_DIR/"
 
databases=`$MYSQL --user=$MYSQL_USER -p$MYSQL_PASSWORD -e "SHOW DATABASES;" | grep -Ev "(Database|information_schema|performance_schema)"`
 
for db in $databases; do
  sudo $MYSQLDUMP --force --opt --user=$MYSQL_USER -p$MYSQL_PASSWORD --databases $db | gzip > "$BACKUP_DIR/$db-$TIMESTAMP.gz"
done

ENDSSH

# 2. Copy db backups to Dropbox
cp -r ${LOCAL_BACKUP_DIR} ${DROPBOX}