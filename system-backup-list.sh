#!/bin/bash

# Apps
cd /Applications && ls > ~/Dropbox/Backup/System-backup-list/apps.txt

# Homebew
/usr/local/bin/brew list > ~/Dropbox/Backup/System-backup-list/brew.txt

# NPM
cd /usr/local/lib/node_modules && ls > ~/Dropbox/Backup/System-backup-list/npm.txt

# Fonts
cd /Library/Fonts/ && ls > ~/Dropbox/Backup/System-backup-list/fonts.txt
username=$USER; cd /Users/${username}/Library/Fonts && ls > ~/Dropbox/Backup/System-backup-list/fonts-user.txt

# Bash profile
cat ~/.bash_profile > ~/Dropbox/backup/system-backup-list/bash_profile.txt

# Aliases
cat ~/.aliases > ~/Dropbox/backup/System-backup-list/aliases.txt