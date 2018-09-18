# Based on http://www.jonathanleighton.com/articles/2011/awesome-active-record-bug-reports/ 

# Run this script with `$ pry app.rb`
require 'pg'
require 'active_record'
require 'csv'
require 'pry'

# Connect to a sqlite3 database
# If you feel like you need to reset it, simply delete the file sqlite makes
ActiveRecord::Base.establish_connection(
  adapter: 'postgresql',
  database: 'carson'
)

# Define the models and relationships
class Car < ActiveRecord::Base
  # belongs_to :transaction
  has_many :transactions
  has_many :customers, through: :transactions
end

class Customer < ActiveRecord::Base
  # belongs_to :transaction
  has_many :transactions
  has_many :cars, through: :transactions
end

class Transaction < ActiveRecord::Base
  belongs_to :car
  belongs_to :customer

  def final_sale_price
    self.car.price * (1 + (self.car.sale_markup / 100)) * 1.088
  end
end

# Everytime the script is run it clears the database, this 
# is okay while working on carson's request.
# Transaction.destroy_all
# Car.destroy_all
# Customer.destroy_all

# Create a few records...
# or import that CSV and create the appropriate records off of it. 
array = []

CSV.foreach("CAR_DATA.csv") do |row|
  # use row here...
  # new_car = Car.create(
  #   make: row[6],
  #   model: row[7],
  #   year: row[8],
  #   price: row[9],
  #   sale_markup: row[10]
  # )

  # new_customer = Customer.create(
  #   first_name: row[1],
  #   last_name: row[2],
  #   email: row[3],
  #   gender: row[4],
  #   phone_number: row[5] 
  # )

  # Transaction.create(
  #   car_id: new_car.id,
  #   customer_id: new_customer.id
  # )
end

# transaction = Transaction.first

binding.pry