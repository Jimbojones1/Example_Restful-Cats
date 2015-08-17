CREATE DATABASE canines;

\c canines





CREATE TABLE dogs (id SERIAL PRIMARY KEY, name varchar(255), breed varchar(255), age integer, picture varchar(65535))
