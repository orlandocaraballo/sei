![Github](https://19386-presscdn-pagely.netdna-ssl.com/wp-content/uploads/2017/10/github-logo-1.png)
# Collaborative Development using Github

## How do you collaborate in software development?

Establish a standard platform of delivery and build upon on that.

Examples:
- [Github](https://github.com)
- [Bitbucket](https://bitbucket.org/)
- [Gitlab](about.gitlab.com)
- [Beanstalk](beanstalkapp.com)

## Open source software

Freely available software developed with the intention of sharing with the wider community.

[The Balance: What is Open Source Software](https://www.thebalance.com/what-is-open-source-software-2071941)

## What is Github?

A website that allows you to create public or private git repositories that you can utilize to:

- Store your code in a central location
- Navigate a GUI interface to visualize git history
- Collaborate with others using:
  - Issues
  - Commenting
  - Pull requests
  - Wikis
  - Project management tools such as:
    - Project creation
    - Issue tracking
    - Milestone tracking
    - Tagging
  - Repository Following
  - Forking repositories
  - Deploy static webpages using Github Pages
- And much more!

[YouTube: What is Github?](https://www.youtube.com/watch?v=w3jLJU7DT5E)

## What problem does Github solve?

It solves the issue of having to collaborate using just git.

## Initial Setup
- Create account
- Setup profile / account
- [Setup SSH](https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/)
  - Public key
  - Private key
  - This is done once per computer
  - Your public key represents your computer on github
  - Re-add your ssh public key on github when:
    - You regenerate your public / private key pair on your current machine
    - If you want to have access to your repos on a new computer
  - Delete ssh public key on github when:
    - Your machine is stolen or lost
    - Your former machine is no longer in use
  - __NEVER GIVE OUT YOUR PRIVATE KEY TO ANYONE!__
- Recommended: Two Step Authentication

[Hostinger Tutorials: How Does SSH Work](https://www.hostinger.com/tutorials/ssh-tutorial-how-does-ssh-work)

## Collaboration: Things to Remember

### Decide the repository owner

- Pick someone on your team who will own the repository
- You can [fork](https://help.github.com/articles/fork-a-repo/) a repository to copy later
- On larger workloads, create a github [project](https://help.github.com/articles/about-project-boards/)

### Assign Collaborators

- Add [collaborators](https://help.github.com/articles/inviting-collaborators-to-a-personal-repository/) to your repo

### Decide on Features

- What is needed (stories)
- What would be nice to have (icebox)
- What will __NOT__ be worked on (gone from existance)

### Decide on Team Roles

- Who will merge pull requests
- Who is working on what feature

### Decide on Workflow

- What order will things be done in
- How often to checkin
- Communication when not in person
- When are things finalized

## Branching

- Branching allows you to take a snapshot of your code in its current state with the intention of working on a feature that is not ready for primetime yet.
- The `master` branch works as the working copy of your code that is fully tested.
- Your `[feature branch]` should house your experimental feature code.
- Once you have tested your feature and are ready to introduce those changes to `master` you can merge those changes into the master branch by:
  - Checking out your local `master` branch using the `git checkout master` command
  - Then merging your feature changes by using the `git merge [feature branch]` command
- Git will attempt to automatically make sense of the historical order of commits and automatically create a new commit with your `[feature branch]` changes and `master` branch changes represented
  - If git cannot figure out how to do this then there will be a [merge conflict](https://help.github.com/articles/about-merge-conflicts/)
  - Otherwise it will create the new commit and everything will be spiffy

[Github: Resolving Merge Conflicts](https://help.github.com/articles/resolving-a-merge-conflict-using-the-command-line/#competing-line-change-merge-conflicts)

[Atlassian: Git Merge](https://www.atlassian.com/git/tutorials/using-branches/git-merge)

### Git Remote Commands

```bash
# clones git repository
# used alongside Github, Bitbucket, etc
git clone git_url
```

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

# aligns local name of branch to remote branch
# you only need to set upstream one time per branch
git push --set-upstream remote_name branch_name

# from this point forward you can type
git push
# to push branch changes to remote branch 
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
# pulls remote code down to local branch
# same as prior command in two steps
git fetch remote_name
git merge remote_name/branch_name
```

```bash
# pulls remote code down to local branch
git pull remote_name branch_name
```

## Workflow

1. Create feature branch
2. Commit code
3. When ready to integrate feature:
    1. Checkout local master branch
    2. Pull down from remote master to local master
    3. Checkout local feature branch
    4. Merge from local master to local feature
4. Push to remote master
5. Create pull request
6. Someone reviews code and either:
    - Merges code from remote feature to remote master
    - Writes comments / informs you personally to fix issues
      - You fix issues locally and when done push to remote feature
      - Once issue is fixed then push to remote master and move to step 6
7. Profit

## Demo

[Merge Demo Repo](https://github.com/orlandocaraballo/merge-demo)

## Avoiding Merge Conflict Pain

Code Related:
- Make atomic commits
- Pull code down to your master and merge from master into feature branch
- Have a team integration czar

Life Related:
- Understand how git / github behaves to avoid stress
- Be in a state of relaxation
- Walk away

## I heard about Rebase

- Yes, rebase is often a better way to collaborate
- Yes, I prefer it myself
- Yes, you may end up using it in the work place
- No, I will not teach you how to rebase
  - Makes more sense to learn it when you understand git better
  - Because you can wipe out git history
  - __If you wipe it out, there is no going back__
- On a team, you either use merge or rebase:
  - If you are rebasing but the rest of your team is not, you are operating like a cowboy coder
  - Establish group norms, don't be cowboy
  - Nobody likes a cowboy coder / lone wolf coder

[Atlassian: Rebase](https://www.atlassian.com/git/tutorials/rewriting-history/git-rebase)

## Git Lost???

[Checkout this handy cheatsheet](../05-git-basics/git-basics.md#git-cheatsheet)

## One Last Thing

- Remember to run a git clone on our class repo located [here](https://github.com/orlandocaraballo/sei-march-5)
- When this cohort ends, make sure to fork the repo if you need access to my notes / examples
- I usually make the class repos private not too long after the cohort end date

__Note: All class code will be located here going forward__
- Walk away

## Workshop

[Collaborative Causes](https://docs.google.com/document/d/1M9VNvIyRU-6zqsQWRj5AB8jcEOXCzJN2WxCrUcvhqEI/edit?usp=sharing)

