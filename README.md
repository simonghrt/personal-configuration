# vim-configuration

My personal vim configuration

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

