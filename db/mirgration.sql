
-- psql -a -f mirgration.sql

CREATE DATABASE vegetarian_meals;

\c vegetarian_meals;

CREATE TABLE users(id SERIAL PRIMARY KEY, username varchar(255), password_digest varchar(255));

CREATE TABLE recipes(id SERIAL PRIMARY KEY, meal varchar(255), name varchar(255), image_url varchar(225), description varchar(225), user_id INT references users(id));

CREATE TABLE ingredients(id SERIAL PRIMARY KEY, name varchar(255));

CREATE TABLE ingredients_recipes(id SERIAL PRIMARY KEY, recipes_id INT references recipes(id), ingredients_id INT references ingredients(id));