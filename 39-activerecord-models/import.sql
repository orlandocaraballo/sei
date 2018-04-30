CREATE TABLE users (
  id integer PRIMARY KEY AUTOINCREMENT,
  first_name varchar(50),
  last_name varchar(50),
  age integer,
  gender varchar(50),
  date_created timestamp DEFAULT current_timestamp
);

CREATE TABLE posts (
  id integer PRIMARY KEY AUTOINCREMENT,
  title varchar(50),
  content text,
  user_id integer,
  date_created timestamp DEFAULT current_timestamp
);