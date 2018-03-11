
Using a Library
Definition and overview of what a library is
Use cases of implementing a library 
Definition and overview of what gems are and how they are used

Using Ruby Gems
Using require
$ gem install mygem
$ gem uninstall mygem
$ gem list --local
Using RVM
Installation
the sudo command is typically not necessary to install gems
Only use sudo if you have problems with permissions during gem installation
Example
Pick gem and demo it - pirate gem

Bundler
From now on, when you create a new Ruby script, put it in its own folder
This structure will become useful as our project grow
Definition and overview
Terminal command to install bundler: $ gem install bundler
Gemfile
Definition and overview
The file itself should always have the name Gemfile, with no extension after it
Code examples of what to put inside a gem file 
Example of fetching a gem from a repository:
gem 'rack-flash3', :git => "git://github.com/treeder/rack-flash.git"
Go over terminal commands 
Code examples
