# we need to require this in order for line 9 to work
require 'sinatra/activerecord'
require 'pg'

# uses sinatra/activerecord to set database
#   authentication
# this is the equivalent of using:
#   ActiveRecord::Base.establish_connection
set :database, 'postgresql:basic_auth'

# creates the User model
#   double check you have a users table before creating
#   this model
class User < ActiveRecord::Base
end