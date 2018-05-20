
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
- SQLite
- PostgreSQL

## Representing Information

Most informaton stored in a relational database is represented visually in a manner that resembles spreadsheets. Each piece of related information is stored into a `table` that is divided into `columns` and `rows`. Each discrete piece of information within the intersection of a `column` and `row` is called a `record`.

<table style="border: 1px solid black; ">
  <caption style="font-style: italic">users</caption>
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

Similar to Ruby and JavaScript, database columns also have data types for the type of information you are storing in a column

## SQLite3 Common Data Types
- `VARCHAR(n)` - used for variable length strings of n length up to 255
- `TEXT` - used for longer strings
- `INTEGER` - used for whole numbers
- `REAL` - used for decimal based numbers
- `BOOLEAN` - used for `true` or `false` values
- `DATETIME` - used for date + time values

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

**Note:** Schemas should display the table name, the column names and column data types

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
- Let's design the schema for a `one-to-one` relationship between `cars` and `companies` table

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

## SQLite3

You can install sqlite3 on Mac by running the following command on your terminal:

```bash
$ brew install sqlite3
```

On Ubuntu:

```bash
$ sudo apt-get update
$ sudo apt-get install sqlite3 libsqlite3-dev
```

### Using SQLite3

You can connect to a sqlite3 database by running the following command:

```bash
$ sqlite3 test.db
```

**Note:** This will create a database named test.db if none already exists.

### In the Shell

Once you are connected to sqlite3 your terminal should look something like this:

```bash
SQLite version 3.8.5 2014-08-15 22:37:57
Enter ".help" for usage hints.
sqlite>
```

You can also connect to a database after loading up the sqlite shell by running:

```bash
sqlite> .open test.db
While within the sqlite shell you can execute sql commands
```

Common Commands:
- `.open`
- `.tables`
- `.quit`

[Sqlite: Command Line Shell for SQLite3](https://www.sqlite.org/cli.html)

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
$ sqlite3 db_name "sql command"
```

You can also create a sql file and run it against the database like so:

```bash
$ sqlite3 db_name < file.sql
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
  id integer PRIMARY KEY AUTOINCREMENT,
  name varchar(50),
  age integer,
  gender varchar(50)
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

## Workshop

[Carmen Sandiego](https://drive.google.com/open?id=1ZMqmQQaBnAKRZs9J0OrylgPKFiPlAPWVw4Q2T35Thuw)
