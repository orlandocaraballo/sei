![Data](data.jpg)

# ORM and ActiveRecord

## ORM

_ORM stands for object relational mapper or object relational mapping. An ORM is an object with defined properties and methods that give us an interface to communicate with our database._

## ActiveRecord

_ActiveRecord is a ruby gem that provides an ORM for communicating with relational databases such as sqlite3 and postgres. It is based on ActiveRecord design pattern._

## Configure Your Sqlite3

- Verify you have sqlite3 installed on your system
```bash
$ sqlite3 --version
```

- Create a database file:
```bash
$ sqlite3 [database name].db
```
- Create your schema by executing create commands from a sql file on your new database
```bash
$ sqlite3 [database name].db < [sequel file].sql
```

## ActiveRecord Installation

`Gemfile`:
```ruby
gem "activerecord"

# this gem allows us to communicate with a
#   sqlite3 db
gem "sqlite3"
```

Next we create a `models.rb` file:
```ruby
# these two lines are necessary
require "active_record"
require "sqlite3"

# this establishes a connection with your db
ActiveRecord::Base.establish_connection(
  adapter:  "sqlite3",
  database: "[name of your database file]"
)

# the rest of the file will be dedicated to classes inheriting from ActiveRecord
class [Singular Table Name] < ActiveRecord::Base
end
```

## Example

```ruby
require "active_record"
require "sqlite3"

ActiveRecord::Base.establish_connection(
  adapter:  "sqlite3",
  database: "app.db"
)

# refers to the users table
class User < ActiveRecord::Base
end
```

## Commands

### Create

Using `create()`:
```ruby
# this creates a new user
User.create(
  first_name: "orlando",
  last_name: "caraballo",
  age: 34,
  gender: "male"
)
```

Using `save()`:
```ruby
user = User.new

# sets the object properties one by one
user.first_name = "orlando"
user.last_name = "caraballo"
user.age = 34
user.gender = "male"

# the user is only saved when running this command
user.save
```

### Read

Using `find()`:
```ruby
# finds user by id
#   fires a ActiveRecord::RecordNotFound exception when user with id not found
user = User.find(1)

# properties on the user object
user.id # user id
user.first_name # orlando
user.last_name # caraballo
user.age # 43
user.gender # male
```

Using `find_by()`:
```ruby
# all these should work
#   returns nil when record not found
User.find_by(id: 1)
User.find_by(first_name: "orlando")
User.find_by(last_name: "caraballo")
User.find_by(age: 34)
User.find_by(gender: "male")
```

Using `where()`:
```ruby
# returns an activerecord relation object
users = User.where(
  first_name: "orlando",
  last_name: "caraballo"
)

# it behaves like an array therefore these work
#   displays all user first names to the console
users.each { |user| puts user.first_name }

# everyone's age is now over 9000
users.each { |user| user.update(age: 9001) }

# returns an activerecord relation with all male
#   users... but be careful because it has not saved
#   to the db until you run .save
mapped_users = users.map { |user| user.gender = "male" }
```

### Update

Using `update()`:
```ruby
user = User.find(1)

# updates the user properties with the following values
user.update(
  first_name: "denisse",
  age: 23,
  gender: "female"
)
```

Using `save()`:
```ruby
user = User.find(1)

# sets the object properties one by one
user.first_name = "denisse"
user.age = 23
user.gender = "female"

# the user is only saved when running this command
user.save
```

### Delete

Using `Model.destroy()`:
```ruby
# deletes a user with id 1
User.destroy(1)
```

Using `object.destroy()`:
```ruby
# finds a user first
user = User.find(1)

# deletes the user found above
user.destroy
```

## Relationships

_Relationships in ActiveRecord are created by executing certain settings that indicate a relationship exists between one class and another_

### one-to-one

For one to one, let's use a `User` and `Profile` class as examples:

```ruby
class User < ActiveRecord::Base
  has_one :profile
end
```

The above setting allows us to run:

```ruby
user = User.first

# this returns the profile associated with the user
user.profile
```

---

```ruby
class Profile < ActiveRecord::Base
  belongs_to :user
end
```

The above setting allows us to run:

```ruby
profile = Profile.first

# this returns the user associated with the profile
profile.user
```

### one-to-many

For one to many, let's use a `User` and `Post` class as examples:

```ruby
class User < ActiveRecord::Base
  has_many :posts
end
```

The above setting allows us to run:

```ruby
user = User.first

# this returns the posts associated with the user
user.posts
```

---

```ruby
class Post < ActiveRecord::Base
  belongs_to :user
end
```

The above setting allows us to run:

```ruby
post = Post.first

# this returns the user associated with the post
post.user
```

### many-to-many

For many to many, let's use a `Product` and `Order` class as examples:

```ruby
class Product < ActiveRecord::Base
  has_many :product_orders
  has_many :orders, through: :product_orders
end
```

The above setting allows us to run:

```ruby
product = Product.first

# this returns the orders associated with the product
product.orders
```

---

```ruby
class Order < ActiveRecord::Base
  has_many :product_orders
  has_many :products, through: :product_orders 
end
```

The above setting allows us to run:

```ruby
order = Order.first

# this returns the products associated with the order
order.products
```

--- 

```ruby
class ProductOrder < ActiveRecord::Base
  belongs_to :product
  belongs_to :order
end
```

The above setting allows us to run:

```ruby
product_order = ProductOrder.first

# this returns the product associated with the product_order
product_order.product

# this returns the order associated with the product_order
product_order.order
```

## Tips

- Make sure you have a database with tables before creating models
- After creating your models, test them in the console before using them in an `.rb` file
- Make sure you test your models in a console before using them in code
- If you are having trouble retrieving related objects, always check your models first for the necessary `has_one`, `has_many` or `belongs_to` settings
- If you are having trouble with your requires make sure you have the right gems installed

## Exercises

```ruby
class Employe < ActiveRecord::Base
  has_one :id_card
  has_many :tasks
  has_many :offices, through: :employee_offices
end

class IdCard < ActiveRecord::Base
  belongs_to :employees
end

class Task < ActiveRecord::Base
  belongs_to :employee
end

class Office < ActivRecord::Base
  has_many :employee, through: :employee_offices
end

class OfficeEmployee < ActiveRecord::Base
  belongs_to :employee
  belongs_to :employees
end
```

1. There are several bugs in this piece of code. What are those bugs and how would you fix them? 
2. How would we get the 10th `employee` in the database?
3. How would you retrieve the `offices` that correspond to the 10th `employee`?
4. How would you retrieve the `employee` that has the task with an id of `4`?
5. How would you find the `id_card` that belongs to an `employee` with the name `"jane"`?

## Resources

- [RoR Guides: ActiveRecord Basics](http://guides.rubyonrails.org/active_record_basics.html)
- [RoR Guides: Association Basics](http://guides.rubyonrails.org/association_basics.html)
- [RoR Guides: ActiveRecord Query Basics](http://guides.rubyonrails.org/active_record_querying.html)

## Workshop

[Johnny Carson's Customer Tracker](https://drive.google.com/open?id=1-tB_9fvIrhJTYnZAEBeXB8zTj7_NHYpEyBH7CqmI1NA)
