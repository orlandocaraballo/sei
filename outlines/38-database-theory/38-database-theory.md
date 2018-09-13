
<img src="sql.png" style="width: 100%" />

## Database Theory

_A database is a collection of information that is organized so that it can be easily accessed, managed and updated._

## DBMS

_A database management system (DBMS) is system software for creating and managing databases. The DBMS provides users and programmers with a systematic way to create, retrieve, update and manage data_

Popular DBMSs
- MySQL
- PostgresSQL
- SQLite
- Oracle Database
- Microsoft SQLServer

We will be using:
- PostgreSQL

## Representing Information

Most informaton stored in a relational database is represented visually in a manner that resembles spreadsheets. Each piece of related information is stored into a `table` that is divided into columns and rows. 

- `field`:
  - one item of information
  - has a data type
- `record`:
  - a complete set of information relative to one database entry
  - `records` are composed of fields

<table>
  <caption>users</caption>
  <tr>
    <th>id</th>
    <th>name</th>
    <th>age</th>
    <th>gender</th>
  </tr>
  <tr>
    <td>1</td>
    <td>orlando c</td>
    <td>34</td>
    <td>male</td>
  </tr>
  <tr>
    <td>2</td>
    <td>patrisha c</td>
    <td>34</td>
    <td>female</td>
  </tr>
  <tr>
    <td>3</td>
    <td>denisse c</td>
    <td>23</td>
    <td>female</td>
  </tr>
</table>

## Data types 

Similar to Ruby and JavaScript, database `fields` have data types for the type of information you are storing in a column.

## Postgres Common Data Types
- `CHAR(n)` - used for fixed length strings of n length
- `VARCHAR(n)` - used for variable length strings of n length up to 255
- `TEXT` - used for longer strings
- `INTEGER` - used for whole numbers
- `REAL` - used for decimal based numbers
- `BOOLEAN` - used for `true` or `false` values
- `TIMESTAMP` - used for date + time values

__Note: If you use CHAR and the string stored is less than n, Postgres will pad the record with spaces. VARCHAR will not pad if shorter than n`__

## Schema

_A schema is a representation of the structure of a database_

For example:
```
users
---------------
id: integer      -> primary key
name: varchar
age: integer
gender: varchar
```

_A `primary key` is a column in a table that represents the primary identifier to search for when looking for data in that table_

**Note:** Schemas should display the table name, the column names, column data types and whether the column is storing a primary / foreign key.

### Group Exercise

- Design the schema for a `posts` table to represent the data representing blog posts

## Relationships

_A database relationship defines an association between two or more tables for the purpose of retrieving data that is related together contextually_

3 Major Types
- one-to-one
- one-to-many
- many-to-many

To implement this sort of relationship, one of the tables being linked together, A, needs to contain a `foreign key` that references the `primary key` of the other table B

## one-to-one

_In a one-to-one relationship, a record in one table is related to only one record in another table_

### Examples
- one **user** has one **profile** record
- one **car** has one **company** that manufactures it

### Group Exercise
- Let's design the schema for a `one-to-one` relationship between `user` and `profile` table

## one-to-many

_In a one-to-many relationship, a record in one table is related to many records in another table_

### Examples
- one **user** has many **posts**
- one **post** has many **comments**
- one **user** has many **tweets**

### Group Exercise
- Design the schema for a `one-to-many` relationship between `users` and `posts` table

## many-to-many

_In a many-to-many relationship, a record in one table is related to many records in another table and vice versa_

### Examples
- many **users** have many **addresses**
    - an address can belong to multiple users, a user could have multiple addresses
- many **products** have many **orders**
    - a product could be ordered many different times, each order could have many different products in it

### Group Exercise
- Design the schema for a `many-to-many` relationship between `users` and `addresses` table

## Postgres

### Client / Server

Postgres operates on a client server architecture. It should automatically fire up a server on your behalf when you first install it. This server hosts all communication with our database by giving us an interface with which to communicate with it. By default postgres creates a default database we can log into. However, it makes more sense if we first create a database locally and run commands on that.

### Setup

In order to setup our local database to use postgres we need to do the following:
- Install `postgresql` package locally
- Create a database (each application should have its own database)
- Configure our sinatra controller file
- Run migrations

### Install `postgresql` locally
**OSX (Mac):**
```bash
# for the purposes of messing with settings in postgres
$ brew install postgresql
```

**Ubuntu (Linux):**
```bash
$ sudo apt-get install postgresql postgresql-contrib
$ sudo apt-get install libpq-dev
```

[Homebrew: Homepage](https://brew.sh/)

### Server Start

In order to ensure our server is running locally we can run:

**OSX (Mac):**

```bash
# this starts / stops / restarts our server
$ brew services [start | stop | restart] postgresql
```

**Ubuntu (Linux):**

```bash
$ sudo service postgresql [start | stop]

# or if that doesn't work

$ sudo /sbin/service postgresql [start | stop]
```

### Create database

Postgres provides for us a command `createdb` to create database for us:

#### OSX (Mac)

```bash
# this creates a database called indicated by name
#   postgres does not store our information in a ".db" file
$ createdb [name of database]
```

#### Linux

On linux the process is slightly more involved because all actions must be made thru the username -> `postgres` therefore:

We must:
- Create a new user using the `createuser` command
- Login to our `postgres` account then make necessary system changes or...
- Run our commands through the `postgres` user account every time

[Digital Ocean: How to Install and Use Postgresql on Ubuntu](https://www.digitalocean.com/community/tutorials/how-to-install-and-use-postgresql-on-ubuntu-16-04)

## SQL

_SQL is the language we use to communicate with a DBMS_

### Common Commands

- **C**reate 
    - `CREATE TABLE...`
    - `INSERT..,`
- **R**ead
    - `SELECT`
- **U**pdate
    - `UPDATE`
- **D**elete
    - `DELETE`

**Note: These are not the full commands, these are just examples. We will be covering them in more detail below.**

## Running SQL
Once you've created your database, you can run SQL commands against it to perform various operations (create schema, drop tables, add data etc.)

Like other languages you've learned, this can be done at terminal line by line like so:

```bash
$ psql [name of database]

# or

$ psql -d [name of database]

# which logs us into postgres client
[name of database]=# [here we can run sql commands]
```

You can also create a sql file and run it against the database like so:

```bash
$ psql -d [database name] -f [import sql script]

# example
$ psql -d app -f import.sql
```

## Defining a schema in SQL
Before we can insert any data into a database, our database needs a schema

Remember our example:
- each table is a sheet in an spreadsheet
- the schema is the top row of that spreadsheet
- this top row explains the data each column will contain and its data type

### Syntax

```sql
CREATE TABLE users (
  ID INTEGER PRIMARY KEY SERIAL,
  name VARCHAR(50),
  age INTEGER,
  gender VARCHAR(50)
);
```

If we put this into a file called `test.sql` and run it against a test database, it should create a table called `users` with an `id`, `name`, `age`, `gender` and `date_created` column.

## CREATE

_The create table command allows us to create a new table_

```sql
-- creates a new table
CREATE TABLE [table];
```

_The insert into command allows us to add a new record into an existing table_

```sql
-- inserts a new record into the database
INSERT INTO [table] ([column1], [column2], [column3]...) 
VALUES ([value1], [value2], [value3]);
```

## SELECT

_The select command allows us to retrieve existing records_

```sql
-- gets all elements from a table
SELECT * FROM [table];

-- gets all elements from table where condition is met
SELECT * FROM [table] WHERE [condition];
```

## UPDATE

_The update command allows us to update existing records_

```sql
-- updates existing record where condition is met
UPDATE [table]
SET [column1] = [value1], [column2] = [value2], ...
WHERE [condition];
```

## DELETE

_The delete command allows us to delete existing records_

```sql
-- deletes records from table where condition is met
DELETE FROM [table] WHERE [condition];
```

## JOIN

_The join command allows us to grab information from a secondary table based on fields store similar data in both tables. Usually a foreign key._

```sql
SELECT [columns] 
FROM [table_to_get_data_from] 
INNER JOIN [table_to_join_with] 
ON [join_clause];
```

```sql
SELECT [columns]
FROM [table_to_get_data_from]
LEFT JOIN [table_to_join_with] 
ON [join_clause];
```

```sql
SELECT [columns]
FROM [table_to_get_data_from]
RIGHT JOIN [table_to_join_with]
ON [join_clause];
```

## Workshop

[Carmen Sandiego](https://drive.google.com/open?id=1ZMqmQQaBnAKRZs9J0OrylgPKFiPlAPWVw4Q2T35Thuw)
