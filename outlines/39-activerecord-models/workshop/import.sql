CREATE TABLE customers (
  id SERIAL PRIMARY KEY,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  email VARCHAR(50),
  gender VARCHAR(50),
  phone_number VARCHAR(50),
  date_created timestamp DEFAULT current_timestamp
);

CREATE TABLE cars (
  id SERIAL PRIMARY KEY,
  make VARCHAR(50),
  model VARCHAR(50),
  year CHAR(4),
  price MONEY,
  sale_markup INTEGER,
  date_created timestamp DEFAULT current_timestamp
);

CREATE TABLE transactions (
  id SERIAL PRIMARY KEY,
  customer_id INTEGER references customers(id) ON DELETE CASCADE,
  car_id INTEGER references cars(id) ON DELETE CASCADE,
  date_created timestamp DEFAULT current_timestamp
);