#!/bin/bash

clear

USERNAME=$USER;
DROPBOX_FOLDER="/Users/${USERNAME}/Dropbox/backup/system-backup-list"

# Apps
cd /Applications && ls > ${DROPBOX_FOLDER}/apps.txt

# Homebrew
/usr/local/bin/brew list > ${DROPBOX_FOLDER}/brew.txt

# NPM
cd /usr/local/lib/node_modules && ls > ${DROPBOX_FOLDER}/npm.txt

# Fonts
cd /Library/Fonts/ && ls > ${DROPBOX_FOLDER}/fonts.txt
cd /Users/${USERNAME}/Library/Fonts && ls > ${DROPBOX_FOLDER}/fonts-user.txt

# Bash profile
cat ~/.bash_profile > ${DROPBOX_FOLDER}/bash_profile.txt

# Aliases
cat ~/.aliases > ${DROPBOX_FOLDER}/aliases.txt

# SSH
cp ~/.ssh/config ${DROPBOX_FOLDER}/ssh_config.txt

# Hosts
cp /etc/hosts ${DROPBOX_FOLDER}/hosts.txt

# Apache
cp /etc/apache2/extra/httpd-vhosts.conf ${DROPBOX_FOLDER}/vhosts.conf.txt

# Gitconfig
cp ~/.gitconfig ${DROPBOX_FOLDER}/gitconfig.txt

# VSCode
cat /Users/${USERNAME}/Library/Application*Support/Code/User/settings.json > ${DROPBOX_FOLDER}/vscode_settings.json
cat /Users/${USERNAME}/Library/Application*Support/Code/User/keybindings.json > ${DROPBOX_FOLDER}/vscode_keybindings.json
cd ~/.vscode/extensions && ls > ${DROPBOX_FOLDER}/vscode_extensions.json

# Crontab
crontab -l  > ${DROPBOX_FOLDER}/cronjobs.txt

# Sequel Pro
cp /Users/$USERNAME/Library/Application\ Support/Sequel\ Pro/Data/Favorites.plist ${DROPBOX_FOLDER}/sequel-pro-favorites.txt
cp /Users/${USERNAME}/Library/Preferences/com.sequelpro.SequelPro.plist ${DROPBOX_FOLDER}/sequel-pro-plist.txt

echo "$(tput setaf 2)✔ Backup finished!$(tput sgr0)"
