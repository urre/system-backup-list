# Backup a list of things on your computer to Dropbox

Just a simple way to backup a list of apps, fonts and packages you have installed on your Mac. Run manually or schedule.

## Manually

All the applications installed on your Mac

```bash    
cd /Applications && ls > ~/Dropbox/backup/System-backup-list/apps.txt
```
Things installed via Homebrew.

```bash
/usr/local/bin/brew list > ~/Dropbox/backup/System-backup-list/brew.txt
```

Things installed globally via Npm

```bash    
cd /usr/local/lib/node_modules && ls > ~/Dropbox/backup/System-backup-list/npm.txt
```

Installed fonts

```bash
cd /Library/Fonts/ && ls > ~/Dropbox/backup/System-backup-list/fonts.txt
username=$USER; cd /Users/${username}/Library/Fonts && ls > ~/Dropbox/backup/System-backup-list/fonts-user.txt
```

Bash profile

```bash
cat ~/.bash_profile > ~/Dropbox/backup/system-backup-list/bash_profile.txt
```

Aliases
```bash
cat ~/.aliases > ~/Dropbox/backup/System-backup-list/aliases.txt
```

### Notes

I'm using the full paths to the binaries here. You can also just use ``brew`` or ``npm``, but that might not work when you use it in Automator or Alfred. And, just change paths if using other.

<img src="https://cloud.githubusercontent.com/assets/307676/14935295/45bf18a2-0ecc-11e6-9105-3a0857d14735.png" alt="Automator" height="100">

<img src="https://cloud.githubusercontent.com/assets/307676/14966900/ee944d8c-10b4-11e6-822b-1c8e0329eb39.jpg" alt="Cron" height="100">

## Run backup every day at 09.00

1. Open up crontab ``env EDITOR=nano crontab -e``
2. Schedule the bash script. Ex. Run 09.00 am monday-friday

```bash
0 09 * * 1-5 /mypath/system-list-backup.sh
```

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

## Alfred Workflow

Use the ``system-list-backup.alfredworkflow`` file in this repo.

![alfred-1](https://cloud.githubusercontent.com/assets/307676/14941464/1137a8c0-0f9d-11e6-85f2-26759ad1b53e.jpg)

![alfred-2](https://cloud.githubusercontent.com/assets/307676/14941465/114fe782-0f9d-11e6-935d-caf54cfb16a3.jpg)

Start typing the keyword "backup" + enter