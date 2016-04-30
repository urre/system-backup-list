# Backup a list of things on your computer to Dropbox

Just a simple way to backup a list of apps, fonts and packages you have installed on your Mac.

## Manually

Things installed via Homebrew.

```bash
brew list > ~/Dropbox/brew.txt
```

Things installed globally via Npm

```bash    
ls `npm root -g` > ~/Dropbox/npm.txt
```

All the applications installed on your Mac

```bash    
cd /Applications && ls > ~/Dropbox/apps.txt
```

Installed fonts

```bash
cd /Library/Fonts/ && ls > ~/Dropbox/fonts.txt
username=$USER; cd /Users/${username}/Library/Fonts && ls > ~/Dropbox/fonts-user.txt
```

![automator_icon](https://cloud.githubusercontent.com/assets/307676/14935295/45bf18a2-0ecc-11e6-9105-3a0857d14735.png)


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


