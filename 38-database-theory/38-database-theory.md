
Databases
Introduction
Brief overview and definition
Database Management System
List examples of popular DMS
Web applications written in Ruby typically use the SQLite3 DBMS for testing locally because of its ease of use and quick setup
PostgreSQL is used in production, meaning on the web server (computer) that will host the version of your app consumers interact with

PostgreSQL
Definition and overview
How it is used
Who uses it:
Apple, Cisco Systems, Creative Commons, Disqus, Etsy, FAA, Instagram, IMDB, Juniper Networks, LastFM, Red Hat, Sirius, Skype, Reddit, Uber, United Nations, US Dept. of State, Yahoo, and NYCDA

SQL
What is SQL?
How do you use it?
CRUD
Commands
CREATE TABLE
INSERT INTO
SELECT * FROM [table name];
UPDATE
DELETE 

Schema
What is a schema?
Writing one on paper
Schema diagram
Setting a schema in SQL
Code example of a Users table schema
Spreadsheet example:
each table is a sheet in an spreadsheet
the schema is the top row of that spreadsheet
this top row explains the data each column will contain and its data type

Data types 
Similar to Ruby and JavaScript, database columns also have data types to be able to perform operations like math and concatenation (joining of strings) on similar types of data
VARCHAR
TEXT
BLOB
INT
FLOAT
TIMESTAMP

Relationships
Overview of database relationships
Go over definition and real example examples of:
1-1 relationships
1-to-many relationships
Many-to-many relationships
The ID column, typically an integer, is the primary key for most tables in the database
This means that it is the primary means of referring to a record in a unique way, by table
Primary keys are typically NOT allowed to be duplicated in another record so each record has a unique identifier
Primary keys and their relationship to foreign keys

Summary: 
A database is composed of tables. Each table has columns and can be related to other tables in the database. Each column has a data type. Each table also has rows of data which correspond to the column names and data types described in the schema.
Terminal
psql

CRUD
Definition and overview of each application
Live demo and have students follow along going over:
Creating a new record into a table with one column
Creating a new record into a table with more than one column
Reading records in the database
Go over the difference between using SELECT and WHERE
Updating records
Destroying records

Postico
Homepage
How to use
