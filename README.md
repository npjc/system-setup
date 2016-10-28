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

Paste all these lines into .bash_profile to make terminal look nicer. 

```
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='ls -GFh'
```

There is also something else i need to paste for brew bash completion

Can achieve with:
```sh
nano .bash_profile
```



**System Preferences**

* Trackpad: lightest click, make click silent
* general: graphite appearance, dark menu bar and dock
* Dock: smallest size, turn off animation when opening apps
* Mission Control: turn off automatic rearranging, turn on group windows by application
* Language & Region: First day of the week to Monday
* Security and Privacy: require password at 1hr
* Notifications: everything off for calendar, reminders (as I use fantastical 2 for those things) and Mail (i use gmail online for email).Everything off for iTunes (I don’t use it basically), photos, safari, notes, google drive. Badges and banners only for messages and fantastical 2.
* Energy Saver: turn off hard disk sleeping when possible and power nap.
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

#### Messages
	* Turn off sound effects
```sh
defaults write com.apple.messageshelper.AlertsController PlaySoundsKey -bool false
```

#### google drive

open, sign in, rename google drive folder to 'googledrive', then will need to tell application where to find it.
```sh
cd ~
mv Google\ Drive googledrive
```

#### Safari Browser preferences: 
	* make feedly.com/i/my the homepage. clear download list after successful download and turn off opening files after downloading. 
	* Make sure passwords and autofill info is up to date
	* install  Adguard safari extension (https://safari-extensions.apple.com/?id=com.adguard.safari-N33TQXN8C7)
	* Under advanced show develop menu in menu bar ON.

#### RStudio: 
	* don't restore from .RData and don't save workspace on exit. 
	* Show margin and make it 100 characters. 
	* ensure source files end with new line and strip trailing whitespace when saving. 
	* disable publishing. 
	* Don't convert tabs to spaces (both global and project options. so i can use makefiles). 
	* Modify keyboard shortcuts: clear workspace to cmd+shift+F9 so workflow for cleaning up is cmd+shift+f9 then f10

#### Adobe Illustrator

<TODO>

#### Fantastical 2
	* licence by finding email and clicking the link.
	* General: start week on monday, show 12 hours at a time.
	* Appearance: hide fantastical in menu bar
	* Accounts: add iCloud and gmail account with refresh every 15 minutes.
	* Advanced: open maps in google maps
