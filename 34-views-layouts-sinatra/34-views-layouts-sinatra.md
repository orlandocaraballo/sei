<img src="sinatra.png" style="width: 100%">

# Sinatra Views and Layouts

## Template

_A template is a file that serves as a starting point for a resource you are constructing, usually a web page._

```html
<!-- 
  the following can be considered a template because
    you are using it as your starting point for additional code
-->
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Document</title>
</head>
<body>
  <!-- your main code goes here -->
</body>
</html>
```

## Views

_Views are template files that house your html code as well as your logic for constructing your html code on a specific component of your site (usually a web page)_

In the case of sinatra views, we will be defining our views as files with the extension `.erb`

### How-to:

1. Create a file(s) with a `.erb` file extension (these will be your views)
2. Create a sub-folder called `views` and place your templates in this folder

Notes:
- The file name minus the extension will be the name of the template within sinatra
- You can utilize a view in sinatra by using the `erb(:[template_name])` method (where `[template_name]` is the name of the template you are trying to use)

```ruby
# main.rb
require "sinatra"

get "/" do
  # this should be the last line of the action
  erb :index
end
```

You can also run ruby code within an erb template by surrounding the code in question within the `<% [ruby code] %>` tags, where `[ruby code]` is where you would place your ruby code. 

```erb
<!-- index.erb -->
<ul>
<% 4.times do %>
  <li>Panda!</li>
<% end %>
</ul>
```

The code above would generate the following html code:

```html
<ul>
  <li>Panda!</li>
  <li>Panda!</li>
  <li>Panda!</li>
  <li>Panda!</li>
</ul>
```

### Variables

You can utilize variables defined in your actions within a view if you prefix their names with the `@` symbol

```ruby
# main.rb
require "sinatra"

get "/" do
  @grocery_list = %w{ cereal chicken bread eggs }

  erb :index
end
```

In the view, in order to display a value from ruby code you need to place the code within the `<%= [ruby code] %>` area, where `[ruby code]` is where you would place your ruby code.

```erb
<!-- index.erb -->
<ul>
<% @grocery_list.each do |item| %>
  <li><%= item %></li>
<% end %>
</ul>
```

The above code would produce the following html code:

```html
<ul>
  <li>cereal</li>
  <li>chicken</li>
  <li>bread</li>
  <li>eggs</li>
</ul>
```

## Layouts

_Layouts are view files that house the basic html structure of your entire website_

### How-to:
1. Remember to have a sub-folder called `views`
2. Create a file called `layout.erb` and place it within the `views` folder (it must be named this file name unless you change this behavior configuration settings)
3. Layout files should always have the statement `<%= yield %>` in the code to indicate where to place the content of the individual webpage within the layout.

### Example

```ruby
# main.rb
require "sinatra"

get "/" do
  @grocery_list = %w{ cereal chicken bread eggs }

  erb :index
end

get "/panda" do
  erb :panda
end
```

```erb
<!-- index.erb -->
<ul>
<% @grocery_list.each do |item| %>
  <li><%= item %></li>
<% end %>
</ul>
```

```erb
<!-- panda.erb -->
<ul>
<% 4.times do %>
  <li>Panda!</li>
<% end %>
</ul>
```

```erb
<!-- layout.erb -->
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Document</title>
</head>
<body>
  <%= yield %>
</body>
</html>
```

The code above should produce the following on the `index` page:

```erb
<!-- /index -->
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Document</title>
</head>
<body>
  <ul>
    <li>cereal</li>
    <li>chicken</li>
    <li>bread</li>
    <li>eggs</li>
  </ul>
</body>
</html>
```

And the `panda` page:

```erb
<!-- /panda -->
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Document</title>
</head>
<body>
  <ul>
    <li>Panda!</li>
    <li>Panda!</li>
    <li>Panda!</li>
    <li>Panda!</li>
  </ul>
</body>
</html>
```

## Linking across pages

When creating a basic navigation you need to place the links within a view template, usually the layout.

**Note: The `href` should point to the route you want to go to when clicking on the link, not the template.**

```erb
<!-- layout.erb -->
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Document</title>
</head>
<body>
  <nav>
    <ul>
      <li><a href="/">Home</a></li>
      <li><a href="/panda">Panda</a></li>
    </ul>
  </nav>

  <%= yield %>
</body>
</html>
```

## Public Folder

In order to store any assets on your sinatra website you need store these files within a folder called `public` within your sinatra root folder. **This file should NOT be within the views folder**

Using the example created above you should have your folder structure look something like this:

```
- app
  - views
    - index.erb
    - panda.erb
    - layout.erb
  - public
    - main.js
    - main.css
  - app.rb
```

In order to link your files just refer to the name minus the `public` folder:

```erb
<!-- layout.erb -->
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Document</title>
  <link type="text/stylesheet" href="main.css" />
  <script type="text/javascript" src="main.js"></script>
</head>
<body>
  <nav>
    <ul>
      <li><a href="/">Home</a></li>
      <li><a href="/panda">Panda</a></li>
    </ul>
  </nav>

  <%= yield %>
</body>
</html>
```

**Note: When linking files in the `public` folder, you omit the `public` in the href**

## Data Sending

There are two main ways we can send information from one page to another:
1. By passing it as a form submission
2. By passing it as a value within a query string parameter

### Query String Parameters

When sending data from a query string we must:
1. Place a `?` after the path
2. Define key / value pairs by using the `=` sign
3. Make sure we have multiple key / value pairs separated by an `&`

Therefore when loading the url `http://localhost:4567/query-string?name=orlando&age=34&gender=male` we would have access to that information in our `query-string` a `get` route with the path `query-string`

```ruby
require "sinatra"

get "/query-string" do
  # would display
  #   {name: "orlando", age: 34, gender: "male"}
  #   in the console
  puts params.inspect
end
```

### Form Parameters

When sending data from a form we must:
1. Render the form to allow a use to enter information (the route is always a `get`)
2. Respond to the data submitted from the form in a separate route (this route is usually a `post`)

```erb
<!-- form.erb -->
<form action="/form" method="post">
  <input type="text" name="name" placeholder="Enter your name">
  <input type="text" name="age" placeholder="Enter your age">
  <input type="text" name="gender" placeholder="Enter your gender">
  
  <input type="submit" value="Go">
</form>
```

```ruby
require "sinatra"

# this generates the form where we allow a user to submit information
# notice how we can have the same path but a different method
get "/form" do
  erb :erb
end

# this responds to the form submission
post "/form" do
  # would display
  #   {
  #     name: "[whatever the user typed in the name field]",
  #     age: [whatever the user typed in the age field], 
  #     gender: "[whatever the user typed in the gender field]"
  #   }
  #   in the console
  puts params.inspect
end
```

## Exercises

**Preparation:**
- Create a new folder called `sinatra_exercises`
- Create a `Gemfile` for your within this folder
    - Add the gems you need
- Create a new file called `app.rb` within this folder
- Create two sub-folders called `views` and `public`

**Do the following:**
1. Create a view called `index.erb` that just displays `"Hello World"` in the `views` folder and add a new `get "/"` route that displays the information on `index.erb`.
2. Create a view called `double_time.erb` that displays whatever is stored within the variable `@text` two times. Set this variable within the a `get "/double_time"` route.
3. Create a file called `layout.erb` in your `views` folder that houses the standard html structure of your website. Make sure to place the `<%= yield %>` in the layout to determine where all other views will show up.
4. Create a navigation that would link you to both the `/double_time` and `/` pages in the `layout.erb` file.
5. Add the `main.js` and `main.css` files into your `public` folder with the text `alert("I am alive!")` and `body { color: red; }` in each file respectively. Now link these files properly in the `layout.erb` file.
6. Create two routes called `get "/info"` and `post "/info"`. In the first route, display a form that accepts a `username` and `password`. Allow the user the submit the data to `post "/info"`. In the second route display the information submitted from the form within the console and redirect to the landing page.
    - How else could we pass in that information to the `get "/info"` route?

## Workshop

[Google Books Search](https://drive.google.com/open?id=1f6mCb-hAS8Cc0HlhUdxvqKIgUHoO2Xa3zdqLQcOJFZY)