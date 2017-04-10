# Backup a list of things on your computer to Dropbox

Just a simple way to backup a list of apps, fonts and packages you have installed on your Mac -> Dropbox. Run manually or schedule. Simple and for everyone.

## Manually

### Apps
    cd /Applications && ls > ~/Dropbox/Backup/System-backup-list/apps.txt

### Homebrew
    /usr/local/bin/brew list > ~/Dropbox/Backup/System-backup-list/brew.txt

### NPM modules installed globally
    cd /usr/local/lib/node_modules && ls > ~/Dropbox/Backup/System-backup-list/npm.txt

### Fonts
    cd /Library/Fonts/ && ls > ~/Dropbox/Backup/System-backup-list/fonts.txt
username=$USER; cd /Users/${username}/Library/Fonts && ls > ~/Dropbox/Backup/System-backup-list/fonts-user.txt

### Bash profile
    cat ~/.bash_profile > ~/Dropbox/backup/system-backup-list/bash_profile.txt

### Bash aliases
    cat ~/.aliases > ~/Dropbox/backup/System-backup-list/aliases.txt

### SSH config
    cp ~/.ssh/config ~/Dropbox/backup/System-backup-list/ssh_config.txt

### Hosts file
    cp /etc/hosts ~/Dropbox/backup/System-backup-list/hosts.txt

### Apache VHosts
    cp /etc/apache2/extra/httpd-vhosts.conf ~/Dropbox/backup/System-backup-list/vhosts.conf.txt

### Gitconfig
    cp ~/.gitconfig ~/Dropbox/backup/System-backup-list/gitconfig.txt

### Sublime
    cp /Users/urbansanden/Library/Application*Support/Sublime*Text*3/Packages/User/Preferences.sublime-settings  ~/Dropbox/backup/System-backup-list/sublime_preferences.txt

    cp /Users/urbansanden/Library/Application*Support/Sublime*Text*3/Packages/User/Default\ \(OSX\).sublime-keymap  ~/Dropbox/backup/System-backup-list/sublime_keymap.txt

### Crontab
    crontab -l  > ~/Dropbox/backup/System-backup-list/cronjobs.txt

### VVV Customfile
    cat /Users/urbansanden/projects/vvv/Customfile > ~/Dropbox/backup/system-backup-list/customfile.txt

### Sequel Pro

    cp '/Users/urbansanden/Library/Application Support/Sequel Pro/Data/Favorites.plist' ~/Dropbox/backup/System-backup-list/sequel-pro-favorites.txt

    cp '/Users/urbansanden/Library/Preferences/com.sequelpro.SequelPro.plist' ~/Dropbox/backup/System-backup-list/sequel-pro-plist.txt

Note: 

+ Quit Sequel Pro if it’s running.
+ Replace ~/Library/Application Support/Sequel Pro/Data/+ Favourites.plist with your backed up copy.
+ Replace ~/Library/Preferences/com.sequelpro.SequelPro.plist with + your backed up copy.
+ Fire up Sequel Pro and you should be back in business.

## Update

Recently added a backup script for backuping databases inside [VVV](https://github.com/Varying-Vagrant-Vagrants/VVV)

    ./vvv-mysql-backup.sh

## Notes

Of course, change all this to your taste/needs.
I'm using the full paths to some of the binaries here. You can also just use ``brew`` or ``npm``, but that might not work correctly when you use it in Automator or with Alfred. 

<img src="https://cloud.githubusercontent.com/assets/307676/14966900/ee944d8c-10b4-11e6-822b-1c8e0329eb39.jpg" alt="Cron" height="100">

## Run backup every day at 09.00

1. Open up crontab ``env EDITOR=nano crontab -e``
2. Schedule the bash script. Ex. Run 09.00 am monday-friday

```bash
0 09 * * 1-5 /mypath/system-list-backup.sh
```

<img src="https://cloud.githubusercontent.com/assets/307676/14935295/45bf18a2-0ecc-11e6-9105-3a0857d14735.png" alt="Automator" height="100">

## Run backup every time you login to your computer

1. Start Automator.app
2. Select "Application"
3. Click "Show library"
4. Add "Run Shell script"
5. Copy & paste the scripts above
6. Test it
7. Save it somewhere, ex to your ``Applications`` folder
8. Add this app to System Preferences -> Account -> Login items
9. Done!

<img src="http://cdn.makeuseof.com/wp-content/uploads/2013/04/Alfred_icon.jpg?6b9ecc" alt="Alfred" height="100">

## [Alfred Workflow](https://www.alfredapp.com/workflows/)

Use the ``system-list-backup.alfredworkflow`` file in this repo.

![alfred-1](https://cloud.githubusercontent.com/assets/307676/14941464/1137a8c0-0f9d-11e6-85f2-26759ad1b53e.jpg)

![alfred-2](https://cloud.githubusercontent.com/assets/307676/14941465/114fe782-0f9d-11e6-935d-caf54cfb16a3.jpg)

Start typing the keyword "backup" + enter