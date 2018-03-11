![Git](https://i.pinimg.com/736x/84/9d/ac/849dac53ec386861333e6f24be7ce33f--programming.jpg)

# Git Basics

## What is Git?

A decrntralized version control system created by Linus Torvalds.

## What is a Version Control System

A system that internally keeps track of the many versions of files you may create to manage changes across time.

## Why is it used?

It is one of the most complex yet the most feature rich version control systems.

## What problem does it solve?

Git keeps track of historical changes you make to files across time so you can, relatively, easily revert back to a prior version, collaborate with a team and view modifications.

## Decentralized approach to version control

Other version control systems have relied on having one master copy of a file exist on a server whereas git stores the entire repository history on every copy on every computer which has access to it.

## What is a Repository

A environment that is managed by git that houses all changes to a particular project across time.

## General Resources

[Git: Homepage](https://git-scm.com/)

[Git: The Simple Guide](http://rogerdudler.github.io/git-guide/)

## Install

### Linux / Mac

👍 You already have some version of it it installed! 

### Windows

You must download [Git Bash](https://gitforwindows.org/)

### Upgrading to Latest

[Atlassian: Installing and Upgrading Git](https://confluence.atlassian.com/bitbucketserver/installing-and-upgrading-git-776640906.html)

## First Time Setup

The firs time you setup git, you will need to configure your git profile by changing your user name and user email via the following commands.

```bash
# replace "John Doe" with your name
# replace johndoe@example.com with your email
git config --global user.name "John Doe"
git config --global user.email johndoe@example.com
```

## Basic Commands

```bash
# fires up help text
git help

# shows help text only for specific command
git help | grep command
```

```bash
# initializes a new git repository
git init
```

```bash
# stages the commit
git add file_name
```

```bash
# commits changes to your local repo
# will fire up default terminal text editor for commenting (default is usually vim)
git commit

# commit changes to your local repo along with a commit message
git commit -m "Commit message"
```

```bash
# checks the status of your repository
# displays information on untracked, unstaged, unmerged files
git status
```

```bash
# displays commits in reverse chronological order
git log
```

```bash
# creates a new branch based on the branch_name
git branch branch_name
```

```bash
# switches to a branch_name
git checkout branch_name
```

```bash
# deletes branch_name
git branch -d branch_name

# deletes branch_name and ignores unmerged warnings
git branch -D branch_name
```

```bash
# clones git repository
# used alongside Github, Bitbucket, etc
git clone git_url
```

## Undo Commands

```bash
# checks out a specific commit
git checkout d5c89348d77a

# creates a new branch based on this commit
# the HEAD pointer is pointing to the new branch
git checkout -b new_branch_without_crazy_commit
```

```bash
# inverses changes from last commit, creates a new commit with these inversd changes
git revert 
```

```bash
# inverses changes from last commit, creates a new commit
git reset
```

### Resource 
[Atlassian: Undoing Commits & Changes](https://www.atlassian.com/git/tutorials/undoing-changes)

---

## Remote Commands

```bash
# list remote repos along with urls
git remote -v
```

```bash
# adds remote repo to workspace
git remote add remote_name remote_url
```

```bash
# pushes local code to remote branch
git push remote_name branch_name
```

```bash
# fetches updated changes from remote
git fetch remote_name
```

```bash
# merge code from branch_name into current branch
git merge branch_name
```


```bash
# pulls local code to remote branch
git pull remote_name branch_name
```

```bash
# pulls local code to remote branch
# same as prior command in two steps
git fetch remote_name
git merge remote_name/branch_name
```

---

## Workflow

1. Initialize repository

2. Create file

3. Stage changes to be commited

4. Commit file to tree

5. Make changes to files

6. Commit changes

7. Profit

## Tips

* Commit often

* Atomic Commits: Keep your commits small

---

## Related Technology

* CVS

* SVN

---

## Exercise

### Setup

Create a new directory called git_practice

### Instructions

#### Initial Commit
1. Initialize a new git repository

2. Create a file called index.html with an html `<head>` and `<body>` 
4. Add the following text into the html body: 
```html
<p>Hello World!</p>
```
5. Check the status of the git repository

6. Stage the file
7. Check the status of the git repository
8. Commit the file with a message of "First commit"

#### Second Commit
1. Create a new file in the same directory named main.css

2. Add the following text into the css body: p { color: blue; } 
3. Link the main.css in the html file
4. Open the html file in the browser to make sure it linked css file
5. Check the status of the git repository
Stage the file
6. Check the status of the git repository
Commit the file with a message of "Added main.css file"

---

## Git Resources

1. [Getting Started with Git](http://git.rocks/getting-started/)
2. [Git](https://try.github.io/levels/1/challenges/1)

---

## Git Cheatsheet

![Cheatsheet](https://www.git-tower.com/blog/content/posts/54-git-cheat-sheet/git-cheat-sheet-large01.png)