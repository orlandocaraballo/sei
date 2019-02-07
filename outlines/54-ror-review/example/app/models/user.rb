class User < ApplicationRecord
  has_many :posts
  has_many :user_addresses
  has_many :addresses, through: :user_addresses
end
