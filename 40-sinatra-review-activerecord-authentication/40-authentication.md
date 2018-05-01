<img src="unlock.jpg" style="width: 100%">

# Authentication

_Authentication is the process of determining whether someone or something is, in fact, who or what it is declared to be._

## Cookies

_A cookie is a file that lives is stored on your computer (and can be accessed through your browser) that stores website activity. The lifetime of a cookie is determined on cookie creation but can be anything from 1 minute to 1 year._

Cookies can be used for storing convenient information for use by a developer:
- Storing whether a user has already seen a popup ad
- Storing whether a user has seen a tutorial on a website
- Tracking whether or not a user is signed in to your website

But can also be used for other things:
- Tracking where you have visited on a website

## Sessions

_A session represents the span of time in which a user utilizes your application. This information is tracked via the use of a cookie._

We can enable session on a sinatra file by adding the setting:

```
enable :sessions
```

into our `app.rb` sinatra controller file

## How To Use

We can utilize a session by using a special variable called `session`. We can store things in the session that we can access not only in our controller file but also in our erb templates.

```ruby
# we can store things in sessions
session[:tutorial_seen] = true

# we can also store the user id of a logged in user
session[:user_id] = 1
```

The above code sample gives us a hint at how we can determine if a user is logged in or not:

```ruby
if session[:user_id]
  # the user is logged in
else
  # the user is not logged in
end
```

But how would we sign someone in to begin with:

```ruby
# displays sign in form
get "/sign-in" do
  erb :sign_in
end

# responds to sign in form
post "/sign-in" do
  @user = User.find_by(username: params[:username])

  # checks to see if the user exists
  #   and also if the user password matches the password in the db
  if @user && @user.password == params[:password]
    # this line signs a user in
    session[:user_id] = @user.id
  else
    # if user does not exist or password does not match then
    #   redirect the user to the sign in page
    redirect "/sign-in"
  end
end
```

How would we sign someone out:

```ruby
# when hitting this get path via a link
#   it would reset the session user_id and redirect
#   back to the homepage
get "/sign-out" do
  # this is the line that signs a user out
  session[:user_id] = nil
  redirect "/"
end
```

But wait, how would we add them to the db:

```ruby
# displays signup form
#   with fields for relevant user information like:
#   username, password
get "/sign-up" do
  erb :sign_up
end

post "/sign-up" do
  @user = User.create(
    username: params[:username],
    password: params[:password]
  )

  # this line does the signing in
  session[:user_id] = @user.id

  # assuming this page exists
  redirect "/signed-in-page"
end
```

Lastly, how would we hide / show links based on signed in status:

```erb
<!-- layout.rb -->
<!DOCTYPE html>
<html>
<head>
</head>
<body>
  <% if session[:user_id] %>

    <!-- only show this code when signed in -->

    <!-- clicking on this link will hit the get "/sign-out" route -->
    <a href="/sign-out" />Sign out</a>

  <% else %>

    <!-- only show this code when signed out -->
    <a href="/sign-in" />Sign In</a>
    <a href="/sign-up" />Sign Up</a>
  
  <% end %>

  <%= yield %>
</body>
</html>
```

## Working Example

I have provided a working example for you can use as a reference located in the `session_example` subfolder. Run the `rake db:migrate` command within that subfolder and then you can run the command `ruby app.rb` to run the server.

**Note:** I added some special sauce on `flash` messages in there. For more info on how to setup flash messages read thru [this markdown document](https://gist.github.com/cmkoller/0d3b048b3c4b48ee4955).

## Exercise

Let's create a simple authentication system, by creating the following 5 routes:
- `get "sign-up"` - displays a sign up form
- `post "sign-up"` - responds to sign up form
- `get "sign-in"` - displays sign in form
- `post "sign-in"` - responds to sign in form
- `get "sign-out"` - signs a user out of session

For each of these, try to follow the steps above to write code that authenticates the user. Remember to create a users table beforehand to actually store user information.

## Workshop

[Ling's CMS Builder](https://drive.google.com/open?id=1GGtguV1WVJBZ7Xf1V5Fpd29dLcPLwUqWSCdfnH7jPrQ)
