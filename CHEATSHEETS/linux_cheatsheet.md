# Linux Cheatsheet

A collection of useful commands.

## System Administration

| Command | Note |
| -----   | ----- |
| `cat /etc/passwd \| grep home`  | List all users and filters those who have `/home/` dir
| `sudo adduser`                  | Adds new user
| `sudo passwd <user>`            | Changes `<user>` password
| `sudo userdel r <user>`         |  Deletes `<user>` from the computer
| `sudo groupadd <group>`         | Creates group named `<group>`
| `sudo usermod -a -G <group1>, <group2>,...  <user>`  | Adds `<user>` to `<groups>` if `-a` not added, all groups are lost
| `sudo gpasswd d <user> <group>`   | Removes `<user>` from a group

## Basic Bash Processing

** Storing variables from a command **

```
#!/bin/bash

vim_root_folder=$(which vim)

post_processing=$(echo $vim_root_folder | awk -F "vim" '{print $1}')

echo The full path is: $vim_root_folder

echo The root folder is: $post_processing
```


**Running a for loop over files**

```
$: for file in *;
do
 echo This is $file;
done
```
