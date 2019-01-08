require "sinatra"
require_relative "person"

output = ""
food = %w{ pizza hamburger hot-dogs burrito fries }
people = [
  Person.new("orlando", 35),
  Person.new("trisha", 35),
  Person.new("denisse", 24)
]

people.each do |person| 
  output += person.render
end

def nav
  "
    <nav>
      <a href='/'>Home</a>
      <a href='/people'>People</a>
      <a href='/people/1'>Orlando</a>
      <a href='/people/2'>Trisha</a>
      <a href='/people/3'>Denisse</a>
    </nav>
  "
end

get '/' do
  "
    #{ nav }
    Landing Page
  "
end

get "/people/new" do
  "
    <form method='post' action='/people'>
      <input type='text' name='name' placeholder='Enter name'>
      <input type='text' name='age' placeholder='Enter age'>
      <input type='submit'>
    </form>
  "
end

post "/people" do
  "#{params[:name]} #{params[:age]}"

  redirect "/people/1"
end

get "/people" do 
  "
    <html>
    <head>
      <style>
        .hello {
          color: blue;
        }
      </style>
    </head>
    <body>
      #{ nav }
      <em class='hello'>Hello</em>
      <p>
        Something else
      </p>

      <ul>
        #{ output }
      </ul>
    </body>
    </html>
  "
end

get "/people/:id" do
  # whatever is typed into the location bar after the /people/
  #   will be stored in params
  # params is a special variable
  #   this will always be named params
  # :id however is something you name
  index = params[:id].to_i

  # subtract 1 from index and get person
  person = people[index - 1]

  nav + person.render
end