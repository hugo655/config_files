SHELL := /bin/bash

all: 
	@printf "Options:\n \
	 make config_VIM \n \
	 make config_BASH \n \
	 make config_TMUX \n"

config_VIM:  
	@printf "\n#### CONFIGURING VIM ####\n\n"
	@ cd .. ;\
	if [  -d  ".vim" ]; then \
	 printf '[INFO] Moving ~/.vim to ~/.vim.bk \n' ;\
	 cat .vim > .vim.bk ;\
   rm .vim ;\q
	 rm .vim ;\
        fi ;\
	printf '[INFO] Creating a link from .vim -> config_files/VIM\n' ;\
	ln -s config_files/VIM .vim ;\
	if [  -f  ".vimrc" ]; then \
	 printf '[INFO] Moving ~/.vimrc to ~/.vimrc.bk \n' ;\
	 cat .vimrc > .vimrc.bk ;\
		rm .vimrc ;\
        fi ;\
	printf '[INFO] Creating a link from .vimrc -> config_files/VIM/.vimrc\n' ;\
	ln -s config_files/VIM/.vimrc .vimrc ;\
	echo "end config"


config_BASH:  
	@printf "\n#### CONFIGURING BASH ####\n\n"
	@ cd .. ;\
	if [  -f  ".inputrc" ]; then \
	 printf '[INFO] Moving ~/inputrc to ~/inputrc.bk \n' ;\
	 cat .inputrc > .inputrc.bk ;\
   rm .inputrc ;\
        fi ;\
	if [ ! -f  ".user_local_variables"  ]; then \
	 printf '[INFO] Creating ~\.user_local_variables \n' ;\
	 touch .user_local_variables ;\
        fi ;\
	printf '[INFO] Creating a link from .inputrc -> config_files/BASH/inputrc' ;\
	ln -s config_files/BASH/inputrc .inputrc ;\
  printf "[INFO] Appending 'source ~/.aliases_shortcuts' to .bashrc \n" ;\
	echo "source ~/.aliases_shortcuts" >> .bashrc ;\
	if [  -f  ".aliases_shortcuts" ]; then \
	 printf '[INFO] Moving ~/aliases_shortcuts to ~/aliases_shortcuts.bk \n' ;\
	 cat .aliases_shortcuts > .aliases_shortcuts.bk ;\
   rm .aliases_shortcuts ;\
        fi ;\
	printf '[INFO] Creating a link from .aliases_shortcuts -> config_files/BASH/aliases_shortcuts' ;\
	ln -s config_files/BASH/aliases_shortcuts .aliases_shortcuts;\
	echo "Run source ~/.bashrc "

config_TMUX:  
	@printf "\n#### CONFIGURING TMUX ####\n\n"
	@ cd .. ;\
	if [  -f  ".tmux.conf" ]; then \
	 printf '[INFO] Moving ~/tmux.conf to ~/tmux.conf.bk \n' ;\
	 cat .tmux> .conf .tmux.conf.bk ;\
   rm .tmux ;\
        fi ;\
	printf '[INFO] Creating a link from .tmux.conf -> config_files/TMUX/tmux.confn' ;\
	ln -s config_files/TMUX/tmux.conf .tmux.conf ;\
	echo "end config"

clean:
	@printf "\n#### COPYING LOGS AND CLEANING DIRECTORY ####\n\n"
	@if [ ! -d "./logs" ]; then printf  'Making  directory  ./logs ... \n' ; mkdir ./logs ; fi	
	@if [ -f xrun.log ] ; then \
	  printf 'Copying xrun.log to ./logs/$(LOGFILE).log ... \n ' ;\
           mv xrun.log logs/$(LOGFILE).log; fi
	@if [ -f xrun.history ] ; then \
           printf 'Copying xrun.history to ./logs/$(LOGFILE).history  ... \n\n\n' ;\
          mv xrun.history logs/$(LOGFILE).history; fi
	@rm -rf xcelium.d
	@if [ -f "xrun.key" ]; then rm xrun.key ; fi
