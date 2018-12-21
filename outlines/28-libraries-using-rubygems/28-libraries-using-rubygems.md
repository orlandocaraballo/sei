<img src="gem.png" width="100%">

# Libraries Using Rubygems

## Libraries

_A library is a reusable piece of code that has been packaged for use by the broader community_

# Ruby Gems

_A ruby gem is a ruby library that has been packaged for use in a ruby program._

## Common Gems

- Nokogiri
- Oauth
- Rake
- RSpec
- Rollbar
- Rake
- JSON
- Bundler
- Sinatra
- Ruby on Rails

### Gems Used in this Class

- Sentry / Raven
- Rake
- JSON
- Bundler
- Sinatra
- Ruby on Rails

## Using Ruby Gems

Here are some commands you can run in the terminal:

```bash
# this will list all locally installed gems
$ gem list --local

# this will install a gem where [gem name] 
#   is the name of the gem
$ gem install [gem name]

# this will uninstall a gem where [gem name]
#   is the name of the gem
$ gem uninstall [gem name]
```

Once a gem is installed we can use it in our code:

```bash
$ gem install httparty
```

```ruby
# the following line loads the json gem
require "httparty"

# we can use the httparty gem to make an http request to 
#   the Pokemon API
response = HTTParty.get('https://fizal.me/pokeapi/api/1.json')
```

## Bundler

_Bundler allows us to group a set of gems together in a package that can be distributed with our apps for another developer to use_

```bash
$ gem install bundler
$ touch Gemfile
$ bundle
```

## Resources

- [RubyGems: Homepage](https://rubygems.org/)
- [RubyGems: Basics](http://guides.rubygems.org/rubygems-basics/)
- [Bundler: Homepage](http://bundler.io/)

## Workshop

[Chuck Norris CLI](https://drive.google.com/open?id=1cXwxZZ8MVuwo4dNZLWfILPMLmqAJ-BWF_4P9PoZyNQo)