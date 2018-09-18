require 'sinatra/activerecord'
require 'pg'

set :database, 'postgresql:basic_auth'

class User < ActiveRecord::Base
end