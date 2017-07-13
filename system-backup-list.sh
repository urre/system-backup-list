#!/bin/bash

# Apps
cd /Applications && ls > ~/Dropbox/backup/system-backup-list/apps.txt

# Homebrew
/usr/local/bin/brew list > ~/Dropbox/backup/system-backup-list/brew.txt

# NPM
cd /usr/local/lib/node_modules && ls > ~/Dropbox/backup/system-backup-list/npm.txt

# Fonts
cd /Library/Fonts/ && ls > ~/Dropbox/Backup/system-backup-list/fonts.txt
username=$USER; cd /Users/${username}/Library/Fonts && ls > ~/Dropbox/Backup/system-backup-list/fonts-user.txt

# Bash profile
cat ~/.bash_profile > ~/Dropbox/backup/system-backup-list/bash_profile.txt

# Aliases
cat ~/.aliases > ~/Dropbox/backup/system-backup-list/aliases.txt

# SSH
cp ~/.ssh/config ~/Dropbox/backup/system-backup-list/ssh_config.txt

# Hosts
cp /etc/hosts ~/Dropbox/backup/system-backup-list/hosts.txt

# Apache
cp /etc/apache2/extra/httpd-vhosts.conf ~/Dropbox/backup/system-backup-list/vhosts.conf.txt

# Gitconfig
cp ~/.gitconfig ~/Dropbox/backup/system-backup-list/gitconfig.txt

# Sublime
cp /Users/urbansanden/Library/Application*Support/Sublime*Text*3/Packages/User/Preferences.sublime-settings  ~/Dropbox/backup/system-backup-list/sublime_preferences.txt
cp /Users/urbansanden/Library/Application*Support/Sublime*Text*3/Packages/User/Default\ \(OSX\).sublime-keymap  ~/Dropbox/backup/system-backup-list/sublime_keymap.txt

# Sublime Linter settings
cat /Users/urbansanden/Library/Application*Support/Sublime*Text*3/Packages/User/SublimeLinter.sublime-settings > ~/Dropbox/backup/system-backup-list/sublime_linter_settings.txt

# Crontab
crontab -l  > ~/Dropbox/backup/system-backup-list/cronjobs.txt

# VVV Customfile
cat /Users/urbansanden/projects/vvv/Customfile > ~/Dropbox/backup/system-backup-list/customfile.txt

# VVV vvv-custom.yml
cat /Users/urbansanden/projects/vvv/vvv-custom.yml > ~/Dropbox/backup/system-backup-list/vvv-custom.txt

# Sequel Pro
cp '/Users/urbansanden/Library/Application Support/Sequel Pro/Data/Favorites.plist' ~/Dropbox/backup/system-backup-list/sequel-pro-favorites.txt
cp '/Users/urbansanden/Library/Preferences/com.sequelpro.SequelPro.plist' ~/Dropbox/backup/system-backup-list/sequel-pro-plist.txt

# Hyper
cat /Users/urbansanden/.hyper.js  > ~/Dropbox/backup/system-backup-list/hyper.txt