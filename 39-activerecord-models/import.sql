CREATE TABLE users (
  id integer PRIMARY KEY AUTOINCREMENT,
  username varchar(50),
  password varchar(50),
  date_created timestamp DEFAULT current_timestamp
);

CREATE TABLE profiles (
  id integer PRIMARY KEY AUTOINCREMENT,
  first_name varchar(50),
  last_name varchar(50),
  age integer,
  gender varchar(50),
  user_id integer,
  date_created timestamp DEFAULT current_timestamp
);

CREATE TABLE posts (
  id integer PRIMARY KEY AUTOINCREMENT,
  title varchar(50),
  content text,
  user_id integer,
  date_created timestamp DEFAULT current_timestamp
);

CREATE TABLE products (
  id integer PRIMARY KEY AUTOINCREMENT,
  sku varchar(50),
  name varchar(50),
  date_created timestamp DEFAULT current_timestamp
);

CREATE TABLE orders (
  id integer PRIMARY KEY AUTOINCREMENT,
  confirmation varchar(50),
  paid boolean,
  number integer,
  date_created timestamp DEFAULT current_timestamp
);

CREATE TABLE product_orders (
  id integer PRIMARY KEY AUTOINCREMENT,
  product_id integer,
  order_id integer,
  date_created timestamp DEFAULT current_timestamp
);