-- creates a table named users with the following columns:
--  id -> the primary key
--  username -> the user's username as a varchar
--  password -> the user's password as a varchar
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  username VARCHAR(50),
  password VARCHAR(50)
);