# Importing
This is probably the section you want. Use these steps to import this vim config
* Optionally, save your existing .vimrc: `cp .vimrc{,-save}`
* `mkdir .vim`
* `cd .vim`
* `git init`
* `git remote add origin https://github.com/mattpep/vimrc.git`
* `git pull`
* cd ..
* `ln -sf .vim/vimrc .vimrc`
* Optionally add your previous saved config: `cat ~/.vimrc-save >> ~/.vimrc`

# Initial setup
These are the steps I used to create the initial setup of a git-managed vim config. If you're going to use this
config for your vim environment then you need the section above instead (titled _Importing_)

* `cd .vim`
* `mv ../.vimrc vimrc`
* `git init`
* `git add *`
* `git commit -m "First commit"`
* `git remote add origin https://github.com/username/vimconfig.git`
* `git push origin master`
* `ln -s vimrc ../.vimrc`
