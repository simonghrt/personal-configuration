# personal-configuration

My personal configuration (zsh, vim, alias, ..)

## Terminals

#### Ubuntu :penguin:

On Ubuntu, I use Terminator, here how to install it :

``` bash
sudo add-apt-repository ppa:gnome-terminator
sudo apt-get update
sudo apt-get install terminator
```

##### Ubuntu :penguin: - Change theme colors to solarize

```dconf``` is required if you don't already have it.
```bash
sudo apt-get install dconf-cli
```

```bash
git clone git://github.com/sigurdga/gnome-terminal-colors-solarized.git ~/.solarized
cd ~/.solarized
./install.sh
```
 - I recommend you **option 1** (dark theme) which is just great.  
 - Choose **option 1** to download seebi' dircolors-solarized
 
After installation, open ```.zshrc``` and add the line:

```bash
eval `dircolors ~/.dir_colors/dircolors`
```

To activate dark solarize theme in Terminator just right click on the terminal, 
> Preferences>Profiles>Colors>Foreground and Background>Built-in schemes: Solarized dark
> Preferences>Profiles>Colors>Palette>Built-in schemes: Solarized

#### Mac :apple:

On Mac, I use iterm that I install going on the official website with download link

I choose in Profiles/General to reuse the previous sessions directory

I also unckeck in Appearance the "show per pane title bar"

## Zsh + oh my zsh

I use it as my default shell

#### Ubuntu :penguin:

``` bash
sudo apt-get install zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

#### Mac :apple:

``` bash
brew install zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

#### Configuration

I use agnoster for my zsh theme (need powerline)

```
ZSH_THEME="agnoster"
```

Add this in your zsh file in order to have a shorter name prompt :

```
prompt_context() {
  if [[ "$USER" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]]; then
    prompt_segment black default "%(!.%{%F{yellow}%}.)$USER"
  fi
}
```

#### Alias

``` sh
alias cl="clear"
```

## Powerline

#### Ubuntu :penguin:

``` bash
# Install powerline fonts
cd
wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf
wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf
mkdir ~/.fonts/
mv PowerlineSymbols.otf ~/.fonts/
mkdir -p .config/fontconfig/conf.d #if directory doesn't exists

# Clear fonts cache
fc-cache -vf ~/.fonts/

# Move config file
mv 10-powerline-symbols.conf ~/.config/fontconfig/conf.d/
```

#### Mac :apple:

I follow the tutorial there : [https://medium.com/@elviocavalcante/5-steps-to-improve-your-terminal-appearance-on-mac-osx-f58b20058c84](https://medium.com/@elviocavalcante/5-steps-to-improve-your-terminal-appearance-on-mac-osx-f58b20058c84)

Solarized is normally already installed in the last version of iterm

## Vim (Unix and Mac)

#### vim-plug

I use vim-plug for the vim pugins manager that you can install on Unix this way (for Vim): 

```sh
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

#### plugins installation

Once vim-plug is installed, you can install all the plugins this way (in vim):

```sh
:source %
:PlugInstall
```

#### special installations

For youcompleteme, you will need to install it this way :

```sh
cd ~/.vim/plugged/youcompleteme
./install.py --all
```

For Syntastic, you will need to install Exhuberant Ctags, you can find informations [here](http://ctags.sourceforge.net/)

## Visual Studio Code

* Auto Close Tag
* Bracket Pair Colorizer
* Debugger for Chrome
* Docker
* ESLint
* GitLens
* Jupyter
* markdownlint
* Material theme (Material theme high contrast)
* Python
* TSLint
* VS Code Jupyter Notebook

<!--
## Atom (I moved to Visual Studio Code)

#### List of plugins used

* minimap
* minimap-git-diff
* minimap-highlight-selected
* atom-beautify
* autoclose-html
* autocomplete-python
* file-icons
* highlight-line
* highligh-selected
* tree-view-git-status
* linter
* several other linter plugins
-->

## Languages

### Nvm (Ubuntu and Mac)

Installation with this simple command

``` bash
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
```

### Python setup

I use miniconda or virtualenv wrapper for managing my python environment

#### Miniconda

##### Mac :apple: 

Follow those instructions : [https://conda.io/docs/user-guide/install/macos.html](https://conda.io/docs/user-guide/install/macos.html)

##### Linux :penguin:

Follow those instructions : [https://conda.io/docs/user-guide/install/linux.html](https://conda.io/docs/user-guide/install/linux.html)

For both, you need to add to the .zshrc the path of conda

#### Virtualenv (with virtualenv wrapper)

##### Mac or Linux

``` bash
pip install virtualenvwrapper
```

Need to add to .zshrc :

``` bash
export WORKON_HOME=$HOME/.virtualenvs
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3
export VIRTUALENVWRAPPER_VIRTUALENV=/usr/local/bin/virtualenv
source /usr/local/bin/virtualenvwrapper.sh
```

## Git configuration

I often have multiple ssh keys for different github accounts (personal and work), I follow those links :
[https://medium.com/@trionkidnapper/ssh-keys-with-multiple-github-accounts-c67db56f191e](https://medium.com/@trionkidnapper/ssh-keys-with-multiple-github-accounts-c67db56f191e)
[https://medium.freecodecamp.org/manage-multiple-github-accounts-the-ssh-way-2dadc30ccaca](https://medium.freecodecamp.org/manage-multiple-github-accounts-the-ssh-way-2dadc30ccaca)

## Jupyter notebook

I install several things on Jupyter :
* Jupyter extensions
* Jupyter theme
* Qgrid

## Shell applications

* how-2 (with NPM)
* htop
* caniuse-cmd (with NPM)
