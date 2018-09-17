CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  username varchar(50),
  password varchar(50),
  date_created timestamp DEFAULT current_timestamp
);

CREATE TABLE profiles (
  id SERIAL PRIMARY KEY,
  first_name varchar(50),
  last_name varchar(50),
  age integer,
  gender varchar(50),
  user_id integer references users(id),
  date_created timestamp DEFAULT current_timestamp
);

CREATE TABLE posts (
  id SERIAL PRIMARY KEY,
  title varchar(50),
  content text,
  user_id integer references users(id),
  date_created timestamp DEFAULT current_timestamp
);

CREATE TABLE products (
  id SERIAL PRIMARY KEY,
  sku varchar(50),
  name varchar(50),
  date_created timestamp DEFAULT current_timestamp
);

CREATE TABLE orders (
  id SERIAL PRIMARY KEY,
  confirmation varchar(50),
  paid boolean,
  number integer,
  date_created timestamp DEFAULT current_timestamp
);

CREATE TABLE product_orders (
  id SERIAL PRIMARY KEY,
  product_id integer references products(id),
  order_id integer references orders(id),
  date_created timestamp DEFAULT current_timestamp
);