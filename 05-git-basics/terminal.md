![Terminal](https://depts.washington.edu/nwcenter/wp-content/uploads/2016/09/maxresdefault.jpg)

# Terminal Review

## What is a terminal?

Another way to communicate with your computer using text commands.

## General Guides

[Terminal: Mac](https://computers.tutsplus.com/tutorials/navigating-the-terminal-a-gentle-introduction--mac-3855)

[Terminal: Linux](https://maker.pro/education/basic-linux-commands-for-beginners)

[Terminal: Windows (Git Bash)](http://www.bhagwad.com/blog/2012/technology/simple-guide-to-git-for-windows.html/)

---

## Basic commands

### Current Directory
```bash
# displays current directory
pwd
```

### Change Directory

```bash
# change to directory indicated by folder_name
cd folder_name

# change to parent directory
cd ..
```

### List
```bash
# lists all entities within a directory
ls

# lists all entities in a nice format
ls -l

# lists all entities including hidden files
ls -a

# lists all entities in a nice format and show hidden files
ls -la
```

### Copy file

```bash
# copies original_file_name to new_file_name
cp original_file_name new_file_name
```

### Rename file
```bash
# renames original_file_name to new_file_name
mv original_file_name new_file_name

# also works for moving a file to a new location
mv origin_file_name directory_name/new_file_name
```

### Delete file
```bash
# deletes a file in the current directory
rm file_name

# deletes all txt files in the current directory
rm *.txt

# deletes all files that start with sei in the current directory
rm sei*

# WARNING: DO NOT TYPE THIS IN YOUR TERMINAL UNLESS YOU ARE SURE OF WHAT YOU ARE DOING
#          THIS DOES NOT GIVE CONFIRMATION

# deletes your entire filesystem
rm -Rf /
```

### Delete Directory

```bash
# deletes folder indicated by folder_name
# MUST BE EMPTY!
rmdir folder_name
```

### View Document
```bash
# opens a document for viewing
# can scroll with a normal scrollbar
# can scroll up and down
less file_name
```

```bash
# opens a document for viewing
# only allows you to scroll page by page
# only scrolls down
more file_name
```

#### Resource

[StackOverflow: More vs Less](https://superuser.com/a/310138)

### Make Directory
```bash
# create new directory indicated by folder_name
mkdir folder_name
```

### Create New File
```bash
# creates a new empty file indicated by file_name
touch file_name
```

---

## Command Chaining

### The Pipe Command

*The `|` (pipe) command allows to string / chain terminal commands together in sequence to "pipe" the output of one command as the input of another command.*

```bash
# useful in situations when there are too much text outputted from ls
ls -l | less

# finds all entities in the current directory that have Music in the name and displays them within less
ls -l | grep "Music" | less
```
