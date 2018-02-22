# Backup a list of things on your computer to Dropbox

Just a simple way to backup a list of apps, fonts and packages you have installed on your Mac -> Dropbox. Run manually or schedule. Simple and for everyone.

## A list of the following settings/

+ Mac Apps (A list of the installed apps)
+ Homebrew (A list of the installed packages)
+ NPM (A list of the globally installed packages)
+ Fonts (A list of the installed fonts)
+ Bash profile (The current bash profile)
+ Aliases (Aliases)
+ SSH config
+ Hosts (The hosts file)
+ Apache (The macOS built in one)
+ Gitconfig
+ VSCode (Lists of the current Settings, Keybindings and Extensions)
+ Crontab (A list of the crontab)
+ VVV Customfile
+ VVV vvv-custom.yml
+ Sequel Pro (A lit of the Favorites)

Note:

+ Quit Sequel Pro if it’s running.
+ Replace ~/Library/Application Support/Sequel Pro/Data/+ Favourites.plist with your backed up copy.
+ Replace ~/Library/Preferences/com.sequelpro.SequelPro.plist with + your backed up copy.
+ Fire up Sequel Pro and you should be back in business.

## Update

Recently added a backup script for backuping databases inside [VVV](https://github.com/Varying-Vagrant-Vagrants/VVV)

    ./system-backup-list-vvv-mysql-backup.sh

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
