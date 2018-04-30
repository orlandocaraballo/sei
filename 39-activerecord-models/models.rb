require "active_record"
require "sqlite3"

ActiveRecord::Base.establish_connection(
  adapter:  "sqlite3",
  database: "app.db"
)

class User < ActiveRecord::Base
  has_one :profile
  has_many :posts
end

class Profile < ActiveRecord::Base
  belongs_to :user

  def full_name
    "#{first_name} #{last_name}"
  end
end

class Post < ActiveRecord::Base
  belongs_to :user
end

class Product < ActiveRecord::Base
  has_many :product_orders
  has_many :orders, through: :product_orders
end

class Order < ActiveRecord::Base
  has_many :product_orders
  has_many :products, through: :product_orders
end

class ProductOrder < ActiveRecord::Base
  belongs_to :product
  belongs_to :order
end
