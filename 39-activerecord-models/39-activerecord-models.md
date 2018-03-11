
ORM and ActiveRecord
Introduction
What is an ORM?
What is ActiveRecord?
Overview and Recap of the MVC model

AR Pattern vs Raw SQL
Go over code examples outlining the differences between AR and SQL
Go over the reasons for adding/implementing AR and why it's compatible with the Sinatra framework 

Setting up Active Record
Code examples going over all the necessary gems 
Steps and code examples of setting up the database
Explaining and demo of running a rake command
Code example and explanation of a Rakefile 

Migrations 
Overview and definition of migrations
Compare to SQL Insert
Command examples of running a migration via the terminal 
Code example and demo of working with migrations
Creating tables, changing tables etc
Emphasize: Don't forget that just changing the migration file itself without running a rake command will do nothing to your database
Data types
:text = TEXT
:string = VARCHAR
:integer = INT
:float = FLOAT
:datetime = DATETIME / TIMESTAMP
:date = DATE
:decimal
:boolean

Models 
Overview and demo of creating and adding models to the models.rb file (adding a User model)
Syntax for requiring models in database
Commands for accessing the User model in IRB
Associations
Belongs_to
Has_one
Has_many
Has_many, through
Has_and_belongs_to_many
Emphasis on singular vs plural

CRUD commands via irb
Code examples and demo of all CRUD application commands via the terminal
Go over:
Adding a record
.create
Looking up a record
.read
Updating a record 
.find, .where, update_attributes 
Deleting a record
.destroy
Examples of saving an instance of a record as a variable

Tips
How to debug database problems
Create and then immediately test your models
