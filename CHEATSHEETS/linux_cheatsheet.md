# Linux Cheatsheet

A collection of useful commands.

## System Administration

| Command | Note |
| -----   | ----- |
| `cat /etc/passwd | grep home `  | List all users and filters those who have `/home/` dir
| `sudo adduser`                  | Adds new user
| `sudo passwd <user>`            | Changes `<user>` password
| `sudo userdel r <user>`         |  Deletes `<user>` from the computer
| `sudo groupadd <group>`         | Creates group named `<group>`
| `sudo usermod -a -G <group1>, <group2>,...  <user>`  | Adds `<user>` to `<groups>` if `-a` not added, all groups are lost
| `sudo gpasswd d <user> <group>`   | Removes `<user>` from a group

