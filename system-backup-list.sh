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

# SSH
cp ~/.ssh/config ~/Dropbox/backup/System-backup-list/ssh_config.txt

# Hosts
cp /etc/hosts ~/Dropbox/backup/System-backup-list/hosts.txt

# Apache
cp /etc/apache2/extra/httpd-vhosts.conf ~/Dropbox/backup/System-backup-list/vhosts.conf.txt

# Gitconfig
cp ~/.gitconfig ~/Dropbox/backup/System-backup-list/gitconfig.txt

# Sublime
cp /Users/urbansanden/Library/Application*Support/Sublime*Text*3/Packages/User/Preferences.sublime-settings  ~/Dropbox/backup/System-backup-list/sublime_preferences.txt
cp /Users/urbansanden/Library/Application*Support/Sublime*Text*3/Packages/User/Default\ \(OSX\).sublime-keymap  ~/Dropbox/backup/System-backup-list/sublime_keymap.txt

# Crontab
crontab -l  > ~/Dropbox/backup/System-backup-list/cronjobs.txt

## VVV Customfile
cat /Users/urbansanden/projects/vvv/Customfile > ~/Dropbox/backup/system-backup-list/customfile.txt