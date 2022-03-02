# My MAKEFILE'S sheet cheat

This is a collection of useful pieces of information I found relevant as I write my Makefiles.

## Basics

The vary basics of Makefiles are making 'recipes'. The simplest Syntax is:

```
target: prerequisites
<TAB>@command ;\
<TAB>command
<TAB>command
```
Make sure to **add the tabs for every commanad** line. The `@` character prevents the terminal to print the command is going to be executed, otherwise there will be a large amount of text on the screen. 

Each command line is a new terminal session. This means that if you want to move directories, you will have group commands by adding `;` to join them.
## Tips

**Skipping Lines**

Sometimes one would like to make a series of commands in row, a good practice is to add `;\` at the end of each line. BEWARE **not to add any extra black line after `\`** .

**Testing folders/files**

Here is an examples on how to check if a file `-f` or a folder `-d` exists. The `!` is a negation.

```
if [  -d  ".vim" ]; then \
 printf '[INFO] Moving ~/.vim to ~/.vim.bk \n' ;\
 mv .vim .vim.bk ;\
       fi ;\
printf '[INFO] Creating a link from .vim -> config_files/VIM\n' ;\
ln -s config_files/VIM .vim ;\
if [ !  -f  ".vimrc" ]; then \
 printf '[INFO] There is no .vim rc file \n' ;\
       fi ;\
```

Make sure to **add a black character** before the closing square-bracket `]`. It's a pain to debug this issue. 
