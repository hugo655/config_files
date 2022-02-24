# My VIM'S sheet cheat

This is a collection of useful information about things I learned as I use VIM, yet I think I might forget/search again. 

## Using VIM'S Spell Checker

[s or ]s  	:= Quirkier ways no navigated between misspelled words

z= 				:= Opens suggestions to misspelled words 

zG 				:= Adds word to dictionary

## Substitute Command 

:%s+<REGEX_TO_BE_REPLACED>+<REGEX_TO_REPLACE>+gc

%s := The % sign replaces every line on the document

g		:= This flag makes sure it searches for every occurrence in a given line

c 	:= This flag prompts a confirm before replacing the REGEX Expression 
