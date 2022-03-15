# These is my collection of information about TMUX
This file considers that my custom `.tmux.conf` file is being used.

```
###############
# Inside TMUX #
###############

Ctrl + Space := Prefix

#Basics
-> Spliting Panes and navigating
<Prefix> c := To create a new tab
<Prefix> 0/1/2/3/... := To navigate between tabs
<Prefix> | := To split current window in vertical
<Prefix> _ := To split current window in horizontal
<Prefix> h/j/k/l/... := To navigate between panes

-> Enabling mouse selection
SHIFT + <mouse selection> := To temporarily disable tmux's selection engine

#VIM MODE
<Prefix> [  := To enter VIM Mode

-> Copying
Shift V := To enter selection mode
V Space := To toggle between Column/Line selection
Enter   := To copy to clipboard

-> Pasting
<Prefix> ] := To paste what is in the VIM's clipboard

```

```
################
# Outside TMUX #
################

#Basics
-> Launching/Killing Sessions
tmux := To launch a new session
tmux new -s <name> := To launch a new session with a name tag to the session
tmux ls := To list the names of tmux sessions
tmux a -t <name> := To attach (resume) the given <name> session
tmux kill-sesion -t <name> := To kill the given <name> session
tmux kill-server := To kill all sessions/server

#Sharing a Session

-> In the same user
tmux new-session -s shared  := In first terminal
tmux attach-session -t shared  := In second terminal

-> With different users
groupapp tmux_sharing := In one terminal to create a group
usermod -a -G tmux_sharing <user_name> := To appeend this newly-created group 
tmux -S /tmp/shareds new -s shared := In one terminal to start a 'socket' in temp folder
chgrp tmux_sharing /tmp/shareds := To change the group permission to the 'new socket file'
tmux -S /tmp/shareds attach -t shared := In another terminal to enter in the shared session

sudo gpaswd -d <user_name> tmux_sharing := [OPTIONAL] To remove one of the users from the group

```


