require "active_record"
require "sqlite3"

ActiveRecord::Base.establish_connection(
  adapter:  "sqlite3",
  database: "app.db"
)

class User < ActiveRecord::Base
  has_many :posts
end

class Post < ActiveRecord::Base
  belongs_to :user
end