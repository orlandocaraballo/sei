
# Security, Environment Variables and APIs

## APIs

There are two major ways to do API calls in ruby:
- Using a generic `gem` to hit any endpoint directly and deal with json yourself
- Using a wrapper `gem` to facilitate the process of interfacing with a specific API

### Using HTTParty

In ruby all APIs can be handled by using a similar method to axios in js:

```ruby
require "httparty"

# hits the pokemon endpoint to get bulbasaur
response = HTTParty.get('https://pokeapi.co/api/v2/pokemon/1/')
puts response["forms"][0]["name"] # "bulbasaur"
```

[Github: HTTParty](https://github.com/jnunemaker/httparty)

The main difference is that in ruby the call is made synchronously -> which means it will wait until the call is done before moving on to the next line of code.

### Using Wrappers

_API wrappers are libraries created for the specific purpose of interfacing with a specific API_

Using the pokemon example, here is an example of pokemon wrapper code:

```ruby
require "poke-api"

loader = Poke::API::Loader.new("pokemon")
loader.find(169) # { "name" => "Bulbasaur", "id" => 169, ... }
```

[Github: Ruby Poke API](https://github.com/ahorner/poke-api)

### Authentication

In order to use an API that require authentication, you need to sign up for an account on their website and generate what's referred to as an **API key**. An **API key** is what the service will use to identify you in their system when making API requests.

```ruby
"89hp8hjijdahsfoj-d78hh2187h9098bj"
```

## Sendgrid

In order to send mail to another person we would normally have to setup a mail server on a production server and spend some time configuring it. Thankfully, there are APIs we can utilize to facilitate the process of sending email so we spend time configuring and more time doing things. One example of such a service is [Sendgrid](https://sendgrid.com/).

### Sengrid Ruby Code

```ruby
require 'sendgrid-ruby'

# includes SendGrid mixin code
include SendGrid

from = Email.new(email: '[your email address]')
to = Email.new(email: '[the email address you want to send to]')
subject = '[subject]'
content = Content.new(
  type: 'text/plain', 
  value: '[plain text content]'
)

# create mail object with from, subject, to and content
mail = Mail.new(from, subject, to, content)

# sets up the api key
sg = SendGrid::API.new(
  api_key: "[SENDGRID_API_KEY]"
)

# sends the email
response = sg.client.mail._('send').post(request_body: mail.to_json)

# display http response code
puts response.status_code

# display http response body
puts response.body

# display http response headers
puts response.headers
```

[Github: Ruby Sendgrid](https://github.com/sendgrid/sendgrid-ruby)

## Unix Hidden files

_Hidden files are files that are not shown by default in "finder" / "files" (in ubuntu) nor in the terminal_

```bash
# this command will list all hidden files
$ ls -a

# this command will list all hidden files with more info
$ ls -la
```

## Modifying Hidden Files

We can modify hidden files by opening them from the terminal:

```bash
$ code .gitignore
$ atom .gitignore
$ subl .gitignore
```

**Note: This assumes you have the command line utilities installed on your system**

- [VSCode: Command Line](https://code.visualstudio.com/docs/editor/command-line)
- [Atom: Atom Basics](https://flight-manual.atom.io/getting-started/sections/atom-basics/#opening-directories)
- [Olivier Lacan: Sublime Text 3 Command Line](https://olivierlacan.com/posts/launch-sublime-text-3-from-the-command-line/)

## Shell Configuation

If you want to configure your terminal you can do so by modifying the following files:
- `.bash_profile`
- `.bashrc`

These files are located in your home folder:

```bash
$ cd ~
$ pwd
/Users/nycdafour
$ ls -a
# tons of files should appear here
```

```bash
# this will display only files that have "bash" in the file name
$ ls -a | grep bash
.bash_history
.bash_profile
.bashrc
```

### Bash Profile

_The `.bash_profile` is a configuration file that loads when you create a new instance of a login shell_

### Bashrc

_The `.bashrc` is a configuration file that loads your shell settings when you create a new instance of a shell_

## Environment Variables

_Environment variables are variables you can set on your computer that store either configuration information relevant to your OS or sensitive information like an API key_

When you open up your `.bash_profile` file it will something like this:

```bash
source ~/.profile

export NVM_DIR="$HOME/.nvm"
export SENDGRID_API_KEY="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"

# colors
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1

# git branch
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "

# served
alias served="ruby -run -e httpd . -p 5000"

[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

alias served="ruby -run -e httpd . -p 5000"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
```

## Wut?

There is a lot happening here but really the main part we care is where it says `export`

```bash
# .bash_profile
export NAME="orlando"
```

The `export` command allow your to create an environment variable that is accessible in both ruby and the terminal. One way we can view the value of this variable is by using the `echo` bash command:

```bash
$ echo $NAME
orlando
```

**Note: you must prefix your environment variable name with `$` in order for it to work on the terminal**

This environment variable is accessible in ruby code by using `ENV` psuedo-hash object:

```ruby
# random.rb
puts ENV["NAME"] # "orlando"
```

**Note: You do not need to prefix the environment variable with `$` in ruby code**

We can also verify our environment variables by firing up an irb session

```bash
$ irb
2.5.1 :001 > ENV["NAME"]
  =>  "orlando" 
```

## Things to Remember

- When you change anything in your `.bash_profile` or `.bashrc` you have to reload the terminal 
    - Alternatively you can run the command `source ~/.bash_profile` or `source ~/.bashrc` in the terminal and that should reload your settings
- Verify your environment variable name before trying to use them in ruby
- The easiest way to verify if your environment variable is set is by echoing it in the terminal
- **Yes it is case sensitive**

## Other Configuration

You can do many other things by changing `.bash_profile` / `.bashrc` files.

[Github: Bash Shell Tips and Tricks](https://github.com/mhulse/dotfizzles/wiki/Bash-shell-tips-and-tricks)

## Workshop

[Opinion Collector](https://drive.google.com/open?id=1o_-f-DxEVxH-IftHHMlJWbaNVnlRMyLB30a0pJ2s33g)
