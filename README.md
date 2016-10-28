# how i setup new macOS system

Just dipping my toes into this after looking over many others' dotfiles. Step-by-step:

### sign into icloud and authorize the device.

### install command-line tools. 

Expect a prompt, click install.

```sh
xcode-select --install
```

### Update all AppStore/macOS software updates

Opens context/mode window. Then install window does the installing.

```sh
softwareupdate --install --all
```

### Set up `git`:

```sh
git config --global user.name 'Nicolas PJ Coutin'
git config --global user.email 'nicolas.coutin@gmail.com'
git config --global --list
```
To authenticate yourself to github (when you work from a private repo) you set that up by cloning a private repo at the command line and when it prompts you for your username you provide it and then it prompts you for your password and you provide that. then: 

```sh
git config --global credential.helper osxkeychain
git config --global credential.helper 'cache --timeout=10000000'
```

### set defaults for macOS

```sh
./macos-set-defaults.sh
```

### install homebrew
interactive 'return',may also prompt for password.
```sh
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
brew analytics off
```

Now make sure Brewfie is in home (e.g.`~/Brewfile`): `cp Brewfile ~/Brewfile`.

Note symlinking doesn't work.
```sh
brew bundle
brew cleanup
```

### SYSTEM MANUAL STUFF

Append what is in this folder's `.bash_profile` to `~/.bash_profile`

There is also something else i need to paste for brew bash completion

Can achieve with:
```sh
nano .bash_profile
```



**System Preferences**


* Language & Region: First day of the week to Monday
* Notifications:
	* everything off for:
		* calendar
		* reminders (as I use fantastical 2 for those things) and 
		* mail (i use gmail online for email).
		* iTunes
		* photos
		* safari
		* notes
		* google drive
	* Badges and banners only for messages and fantastical 2.
* Sound: turn off user interface sound effects
* iCloud: Make sure Mail iCloud is turned off (my iCloud email account is empty and has automatic forwarding to my gmail). For iCloud Drive: Turn onDesktop and Documents folders, turn off quicktime player, garage band, iMovie, and Mail app cloud storage.
* App Store: automatic check, download and install app and macOS updates.
* Internet Accounts: iCloud and Google. delete everything else. Although having contact information from Facebook, linked in, twitter might beuseful here.
* Extensions: Google Drive Finder extension ON. share menu: only keep reading list, notes, reminders, add to photos, add people
* Bluetooth: turn off unless needed.

* Sharing: Change the computer name to 'e11mbp' (for early 2011 mbp) or equivalent.
* Users & Groups: Turn off guest user. Turn on automatic login. Right click on my profile and click advanced options, rename to npjc.
* Date and time: digital clock showing the date.


### APPLICATION MANUAL STUFF

* Log into __Google Drive__, quit app, rename folder to `googledrive`, then open and tell it where to find folder.
* install __Safari__ extensions: 
	* [Adguard](https://safari-extensions.apple.com/?id=com.adguard.safari-N33TQXN8C7)
* __RStudio__:
	* don't restore from `.RData` and never save session, only history.
	* Show margin and make it 100 characters. 
	* ensure source files end with new line and strip trailing whitespace when saving. 
	* disable publishing. 
	* Don't convert tabs to spaces (both global and project options. so i can use makefiles). 
	* Modify keyboard shortcuts: clear workspace to cmd+shift+F9 so workflow for cleaning up is cmd+shift+f9 then f10
* __Adobe Illustrator__
	* <TODO>
* __Fantastical 2__:
	* licence by finding email and clicking the link.
	* General: start week on monday, show 12 hours at a time.
	* Appearance: hide fantastical in menu bar
	* Accounts: add iCloud and gmail account with refresh every 15 minutes.
	* Advanced: open maps in google maps
