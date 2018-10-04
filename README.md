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

##### Change theme colors to solarize

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

#### Mac

On Mac, I use iterm

## Zsh + oh my zsh

I use it as my default shell

#### Ubuntu

``` bash
sudo apt-get install zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

#### Mac

``` bash
brew install zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

#### Configuration

I use agnoster for my zsh theme (need powerline)

```
ZSH_THEME="agnoster"
```

#### Alias

Here are some pretty useful aliases

``` bash
alias ..2="cd ../.."
alias ..3="cd ../../.."
alias ..4="cd ../../../.."
alias ..5="cd ../../../../.."

# Git
# gst for git status (default)
# ga for git add
```

## Powerline

#### Ubuntu

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

## Vim

#### vim-plug (Unix)

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

For powerline, you can install it this way :

```sh
pip install powerline-status
```

## Atom

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
