# Importing
If you're going to use this repo for your own vim environment then this is probably the section you want.

* Optionally, save your existing .vimrc: `cp .vimrc{,-save}`
* `mkdir .vim`
* `cd .vim`
* `git init`
* `git remote add origin https://github.com/mattpep/vimrc.git`
* `git pull origin master`
* `git submodule init`
* `git submodule update`
* `cd ..`
* `ln -sf .vim/vimrc .vimrc`
* Optionally add your previous saved config: `cat ~/.vimrc-save >> ~/.vimrc`

# Staying up to date
## With me
Do this:
`git submodule update --init` to update all of them, and add any new ones since your last update

## With one or more submodules
Because I use git submodules, you might run into a situation where you need to update one of the submodules
which I haven't yet myself updated.
* `git submodule foreach git pull` to update all of them
* `cd bundle/pluginname && git pull origin master` to update one of them

# Initial setup
These are the steps I used to create the initial setup of a git-managed vim config. You can use these if you want to
track your own vim config but don't want to use mine as a starting point.

* `cd .vim`
* `mv ../.vimrc vimrc`
* `git init`
* `git add *`
* `git commit -m "First commit"`
* `git remote add origin git@github.com:mattpep/vimrc.git
* `git push origin master`
* `ln -s vimrc ../.vimrc`
