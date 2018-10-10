class User < ApplicationRecord
  has_many :posts

  validates :username, :password, presence: true
end
