require "active_record"
require "pg"

ActiveRecord::Base.establish_connection(
  adapter:  "postgresql",
  database: "app"
)

class User < ActiveRecord::Base
  has_one :profile
  has_many :posts
end

class Profile < ActiveRecord::Base
  belongs_to :user
end

class Post < ActiveRecord::Base
  belongs_to :user

  def title_and_content
    "#{self.title}, #{self.content}"
  end
end

class Order < ActiveRecord::Base
  has_many :product_orders
  has_many :products, through: :product_orders
end

class Product < ActiveRecord::Base
  has_many :product_orders
  has_many :orders, through: :product_orders
end

class ProductOrder < ActiveRecord::Base
  belongs_to :order
  belongs_to :product
end