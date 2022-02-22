# VIM Config files
Run the following commands to map .vim and .vimrc to these files

``` 
 ln -s config_files/VIM/ .vim
 ln -s config_files/VIM/.vimrc .vimrc
``` 

# TMUX Config files
Run the following commands to map .tmux.conf to these files

``` 
 ln -s config_files/TMUX/tmux.conf .tmux.conf
``` 

# BASHrc confing files
Append the following line to .bashrc; then Run the following commands to link the config_files

```
echo "source ~/.aliases_shortcuts" >> .bashrc
ln -s config_files/BASH/aliases_shortcuts .aliases_shortcuts

source ~/.bashrc
```


