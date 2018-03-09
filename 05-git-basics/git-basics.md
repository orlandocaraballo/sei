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

## Basic Commands

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

* Keep your commits small

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

2. Create a file called index.html with an html 3. head and body 
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