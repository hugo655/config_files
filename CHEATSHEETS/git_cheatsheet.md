# My GIT'S sheet cheat

This is a collection of useful pieces of information I found relevant as I learn GIT. The reason for this document is because I always find myself asking same questions over and over again such as:

- How can I restore a file ?
- How do I merge two branches ?
 ...

This kind of dumb questions but I often do them a lot.

```

#############################
# CREATING NEW REPOSITORIES #
#############################

-> Brand-new repository
echo "Quick Info" >> README.md
git init
git add README.md
git commit -m "first commit"
git branch -M main := To rename the current branch to be set as the main (the default name is master)
git remote add <remote-repository-name> <remote-repository-url> := To create a remote link
git push -u <remote-repository-name> <branch name> 

-> Existing Repository
git remote add <remote-repository-name> <remote-repository-url> := To create a remote link
git branch -M main := To rename the current branch to be set as the main (the default name is master)
git push -u <remote-repository-name> <branch name> 

```

