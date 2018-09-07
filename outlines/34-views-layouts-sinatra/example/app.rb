require 'sinatra'
require 'pry-byebug'

# placing your instance variables in the initialize
#   will make them available in every route
# NOTE: be careful with this as it can make your code confusing
#   since you have to look here to find the variables you have defined
#   Also, I have not verified whether this is the way Sinatra wants 
#   you to do it
def initialize
  # super must be here
  super

  # will allow names to be used in all templates
  @names = %w{ orlando garth rich marlon diana }
end

# defines the landing page for the website
get '/' do
  # generates html via the list_names template and
  #   - passes in the following array as the variable named 'names'
  #   - the name of the template is list_names.erb
  erb(:list_names, locals: { names: ['diana', 'marlon'] })
end

# defines a route that responds to the path '/list-addresses'
get '/list-addresses' do
  # generates html via the list_addresses template
  #   - passes in the following array as the variable named 'addresses'
  #   - the name of the template is list_addresses.erb
  #   - these files are located within /views
  erb(:list_addresses, locals: { addresses: ['123 Main St', '252 Dump Town'] })
end

# defines a route that responds to the path '/list-names-addresses'
get '/list-names-addresses' do
  # generates html via the list_addresses template and
  #   - the name of the template is list_names_addresses.erb
  #   - these files are located within /views
  erb(:list_names_addresses)
end

# defines a route that responds to the path '/users'
get '/users' do
  # generates html via the users template and
  #   - the name of the template is users.erb
  #   - these files are located within /views
  erb(:users)
end

# defines a route that responds to the path '/for-marlon'
get '/for-marlon' do
  # this instance variable will be available to us within
  #   the template below
  @here_you_go_bro = 'some stuff'

  # generates html via the for_marlon template and
  #   - the name of the template is for_marlon.erb
  #   - these files are located within /views
  erb :for_marlon
end

# defines a route that responds to the path '/diana'
get '/diana' do
  # this code here is equivalent to the code below
  # erb(:diana, {
  #   locals: { 
  #     the_best: 'diana'
  #   }
  # })

  # generates html via the diana template and
  #   - the name of the template is diana.erb
  #   - these files are located within /views 
  #   - passes in the variable 'the_best' to the template
  erb :diana, { locals: { the_best: 'diana' }, layout: :diana_layout }
end

# allows us to utilize scss code within our app
# defines a route that responds to the path '/main.css'
get '/main.css' do
  # generates scss via the diana template and
  #   - the name of the template is main.erb
  #   - these files are located within /views 
  scss(:main)
end

# defines a route that responds to the path '/form'
get '/form' do
  # generates html via the form template and
  #   - the name of the template is form.erb
  #   - these files are located within /views
  erb(:form, locals: { query: params[:query] })
end