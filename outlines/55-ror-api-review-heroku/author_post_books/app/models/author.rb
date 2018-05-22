class Author < ApplicationRecord
  has_many :posts
  has_many :author_books
  has_many :books, through: :author_books
end
