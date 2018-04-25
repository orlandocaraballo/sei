![Heroku](heroku.png)

# Deploying to a Sinatra App to Heroku

_[Heroku](https://www.heroku.com/) is a service we can use to host our web applications_

## One Time Setup
- Sign up for account [here](https://signup.heroku.com/dc)
- Download [Heroku Command Line Tools](https://devcenter.heroku.com/articles/heroku-cli#download-and-install)
- Login to your heroku account on the command line

```bash
$ heroku login
Enter your Heroku credentials.
Email: janedoe@example.com
Password (typing will be hidden):
Authentication successful.
```

## For Your Project
- Create a github repository for your project
- Create a `config.ru` file in your project directory

```ruby
# config.ru
require './[name of your controller file minus the extension]'
run Sinatra::Application
```

- Commit your changes to your repository locally & push to github
- Run the command `heroku create`

```bash
$ heroku create
Creating app... done, ⬢ sleepy-meadow-81798
https://sleepy-meadow-81798.herokuapp.com/ | https://git.heroku.com/sleepy-meadow-81798.git
```

- Run the command `git push heroku master`
- Open your application in your browser by running the command `heroku open`

## Heroku Commands

Going forward when you run commands on your server on heroku it will be prefixed with `heroku`

### Common Commands

```bash
heroku create # creates a new heroku app
heroku open # opens your app in the default browser
heroku logs # opens up the console
heroku config # displays all heroku config variables
heroku local # run app server locally
```

## Resources

- [Heroku: Getting Started with Ruby](https://devcenter.heroku.com/articles/getting-started-with-ruby#introduction)
- [Heroku: Using the CLI](https://devcenter.heroku.com/articles/using-the-cli)
- [Heroku: Setting Up Config Variables in Command Line](https://devcenter.heroku.com/articles/config-vars)