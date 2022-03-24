# My GIT'S sheet cheat

This is a collection of useful pieces of information I found
 relevant as I learn GIT. The reason for this document is because
I always find myself asking same questions over and over again such as:

- How can I restore a file ?
- How do I merge two branches ?
 ...

This kind of dumb questions but I often do them a lot.

## **Creating New Repositories**

There is a series of common steps when you create a new repository in
a  web host like git hub and to spread across you multiple devices.

**Brand-New Repo**
```
echo "Quick Info" >> README.md
git init
git add README.md
git commit -m "first commit"
git branch -M main := To rename the current branch to be set as the main (the default name is master)
git remote add <remote-repository-name> <remote-repository-url> := To create a remote link
git push -u <remote-repository-name> <branch name> 
```

**Existing Repository**
```
git remote add <remote-repository-name> <remote-repository-url> := To create a remote link
git branch -M main := To rename the current branch to be set as the main (the default name is master)
git push -u <remote-repository-name> <branch name> 

```

## Renaming Branches

Renaming is a matter of running the command `git -m <new_name>`.
Yet, this only renames the branch **locally**; If the you want to
rename in a **remote branch**, you have to *delete the old branch in the remote repository*
and than *push up-stream again*:

```
git branch -a // To check all branches
git checkout <wrong_name_branch> 
git branch -m <new_name> // This has changed locally
git branch -a // Note there is the old_name(remotly) and the new_name(locally)
git remote -v // This could help to check remote repository names
git push origin --delete <wrong_name_branch> // To delete remote branch
git push origin -u <new_name> // To push upstream and 'rename' old branch

// Checking the changes
git branch -a 
git remote show
```

## **Command Guide: Exploring Remote Repository**
| Command                   | Note 
|---------------------------|-------------------------------------
`git remote`                | List remote repositories configured
`git remote -v`             | List remote repositories configured with more infos for get-push
`git remote get-url <name>` | Returns the URL associated to the <name> remote repository
`git remote show <name>`    | Returns all information about the <name> remote repository

