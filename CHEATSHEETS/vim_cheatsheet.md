# My VIM'S sheet cheat

This is a collection of useful information about things I learned as I use VIM, yet I think I might forget/search again. 

## Editing VIMRC

`:e $MYVIMRC` is an easy way to edit the current user's vimrc.

## Spliting panes and Zomming

| Command                   |  Note
|--------------------------------------------------------------------------------
|`:split` or `:vsplit`      | Splits the current pane into horizontal or vertical
|`ctrl` `w` `h`/`j`/`k`/`l` | Navigate around panes
| `ctrl` `w` `=`            | Adjust all panes to equal size
| `ctrl` `w` `|`            | Fill pane completelly vertically
| `ctrl` `w` `_`            | Fill pane completelly horizontally
| `ctrl` `w` `<`/`>`        | Adjust panes horizontally
| `ctrl` `w` `+`/`-`        | Adjust panes vertically


## Using VIM'S Spell Checker
| Command                 |  Note
|-------------------------|----------------------------------------------------
|`[s` or `]s`	            | Quirkier ways no navigated between misspelled words
|`z=`                     | Opens suggestions to misspelled words
|`zG`        	            | Adds word to dictionary
|`:set spell spelllang=pt`| Changes the spelling language


## Substitute Command 

```
:%s+<REGEX_TO_BE_REPLACED>+<REGEX_TO_REPLACE>+gc

%s := The % sign replaces every line on the document

g	:= This flag makes sure it searches for every occurrence in a given line

c	:= This flag prompts a confirm before replacing the REGEX Expression 
```
