# Backup NPM and Homebrew packages to Dropbox

Just a simple way to backup a list of apps and packages you have installed via [Npm](https://www.npmjs.com/) and [Homebrew](http://brew.sh/).

## Manually

Things installed via Homebrew.

```bash
brew list > ~/Dropbox/brew.txt
```

Things installed globally via Npm

```bash    
ls `npm root -g` > ~/Dropbox/npm.txt
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


#### Screenshot from Automator (Swedish)
![Screenshot](https://cloud.githubusercontent.com/assets/307676/13986111/dd7cd7e0-f100-11e5-9f9b-a9851f1cbe86.png)