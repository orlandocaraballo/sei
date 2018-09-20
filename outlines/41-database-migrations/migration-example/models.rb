require 'sinatra/activerecord'
require 'pg'

set :database, 'postgresql:migration-example'

class User < ActiveRecord::Base
  has_many :posts
end

class Post < ActiveRecord::Base
  belongs_to :user
end