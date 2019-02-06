class User < ApplicationRecord
  has_many :posts
  validates :username, :password, acceptance: true
end
