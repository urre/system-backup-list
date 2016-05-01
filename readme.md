# Backup a list of things on your computer to Dropbox

Just a simple way to backup a list of apps, fonts and packages you have installed on your Mac.

## Manually

All the applications installed on your Mac

```bash    
cd /Applications && ls > ~/Dropbox/apps.txt
```

Things installed via Homebrew.

```bash
brew list > ~/Dropbox/brew.txt
```

Things installed globally via Npm

```bash    
cd /usr/local/lib/node_modules && ls > ~/Dropbox/npm.txt
```

Installed fonts

```bash
cd /Library/Fonts/ && ls > ~/Dropbox/fonts.txt
username=$USER; cd /Users/${username}/Library/Fonts && ls > ~/Dropbox/fonts-user.txt
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

## Alfred Workflow

Use the ``system-list-backup.alfredworkflow`` file in this repo.

![alfred-1](https://cloud.githubusercontent.com/assets/307676/14941464/1137a8c0-0f9d-11e6-85f2-26759ad1b53e.jpg)

![alfred-2](https://cloud.githubusercontent.com/assets/307676/14941465/114fe782-0f9d-11e6-935d-caf54cfb16a3.jpg)

Start typing the keyword "Backup" + enter