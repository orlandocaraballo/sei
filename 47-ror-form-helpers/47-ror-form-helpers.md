<img src="formation.png" style="width: 100%;">

## RoR Forms and Helpers

_Because http is inherently stateless, the goal of a form is to enable us to capture information from the user to send to another route._

Forms have two major attributes
- `method` - dictates which http method will be used to send the info
- `action` - dictates which path the info will be send to

## In HTML

This is what a typical form looks like in html:

```html
<!-- /views/posts/new.html.erb -->
<form method="post" action="/posts">
  <input type="text" name="title" />
  <input type="text" name="content" />
  <input type="submit" value="Go" />
</form>
```

Judging by the location of where this form will go, this should create a new post with a `title` and `content`. On the backend we would code this behavior as follows:

```ruby
# routes.rb
get "/posts", to: "posts#new"
post "/posts", to: "posts#create"
```

```ruby
# /controllers/posts_controller.rb
class PostsController < ApplicationController
  def new
  end
  
  def create
    @post = Post.create(
      title: params[:title],
      content: params[:content]
    )
  end
end
```

However, if we also have users to associate with posts, this would create posts with no `user_id` attributes. :thinking_emoji:

## Hidden Fields

In forms, hidden fields allow us to capture information without having the information show up on the screen:

```ruby
# /controllers/posts_controller.rb
class PostsController < ApplicationController
  def new
    # this is not exactly how sessions work in rails
    #   but we are doing this for example purposes
    @user_id = session[:user_id]
  end
  
  def create
    @post = Post.create(
      title: params[:title],
      content: params[:content],
      user_id: params[:user_id]
    )
  end
end
```

```html
<!-- /views/posts/new.html.erb -->
<form method="post" action="/posts">
  <input type="hidden" name="user_id" value="<%= @user_id %>">
  <input type="text" name="title" />
  <input type="text" name="content" />
  <input type="submit" value="Go" />
</form>
```

This form post would submit to the `create` action and also submit the `user_id` so we can create a new post associated with the signed in user.

## Forms in Rails

Unfortunately, due to security concerns, in RoR, the process for using forms is a little different. The convention is to use what is referred to as a form view helper.

### Form Helpers

_A view helper is a function / method available to use in a view for the purposes of simplifying the process of creating html. A form helper is one version of this helper._


#### With a Model

```ruby
# /controllers/posts_controller.rb
class PostsController < ApplicationController
  def new
    # again, this is not exactly how sessions work in rails
    #   but we are doing this for example purposes
    @user_id = session[:user_id]

    # here we are defining a new post object
    #   but it will not save... this detail is crucial
    #   this variable will available to us in the view
    @post = Post.new
  end
end
```

```erb
<!-- /views/posts/new.html.erb -->
<%= form_with model: @post do |form| %>
  <%= form.text_field :title %>
  <%= form.text_field :content %>
  <%= form.hidden_field :user_id, value: @user_id %>
  <%= form.submit %>
<% end %>
```

This would generate the following html, roughly:

```html
<form method="post" action="/posts">
  ...
  <input type="text" name="post[title]" />
  <input type="text" name="post[content]" />
  <input type="hidden" name="post[user_id]" value="<!-- user id -->">
  ...
  <input type="submit" value="Submit" />
</form>
```

Notice the `post[title]`, `post[content]` and `post[user_id]`. What this does is group all pieces of information into the params hash under `params[:post][:title]`, `params[:post][:content]` and `params[:post][:user_id]` instead of `params[:title]`, `params[:content]` and `params[:user_id]`

```ruby
# /controllers/posts_controller.rb
class PostsController < ApplicationController  
  # we can now write our create action like this:
  def create
    @post = Post.create(
      title: params[:post][:title],
      content: params[:post][:content],
      user_id: params[:post][:user_id]
    )
  end

  # or much more simply like this:
  def create
    @post = Post.create(params[:post])
  end
end
```

#### Without a Model

Sometimes we need to write our form code so its not associated with a model such as in the case of a search bar. In this case, we can write our code as follows:

```ruby
# config/routes.rb
get "/search", to: "search#go"
```

```ruby
# /app/controllers/search_controller.rb
class SearchController < ApplicationController
  def go
    # the form will submit back to this same route
    #   so we give ourselves the ability to populate the search
    #   information based on a prior search if it exists
    @query = params[:query]
  end
end
```

```erb
<%= form_with url: search_path do |form| %>
  <%= form.text_field :query, value: @query %>
  <%= form.submit %>
<% end %>
```

Which roughly generates the following html:

```html
<form method="get" action="/search">
  ...
  <input type="text" name="query" />
  ...
  <input type="submit" value="Submit" />
</form>
```

## Other View Helpers

- `image_path("[image name]")` - constructs html for `img` tag by path
- `image_url("[image name]")` - constructs html for `img` by url
- `javascript_include_path("[js file name]")` - constructs html for including js
- `stylesheet_link_tag("[stylesheet file name]")` - constructs html for stylesheet
- `render "view"` - render other partials into a view (among other uses)
- `select_date([default date])` - constructs a date field with today being the default
- `parses_number_into_currency(number)` - takes a number and returns a string with correct decimals and a currency marker

[RoR Guides: Overview of View Helpers](http://guides.rubyonrails.org/action_view_overview.html#overview-of-helpers-provided-by-action-view)

## Tips
- Understand how it works BEFORE you code, you may become frustrated otherwise
- Check the html of the page with a form
- Double check params grouping
- Double check for hidden fields
- Take it slow
- Practice using different types of forms

## Practice

Try creating a rails app with a new user form using `form_with` and then storing that information in the database.