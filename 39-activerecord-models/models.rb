require "active_record"
require "sqlite3"

ActiveRecord::Base.establish_connection(
  adapter:  "sqlite3",
  database: "app.db"
)

class User < ActiveRecord::Base
end

# class Post < ActiveRecord::Base
# end