DROP DATABASE IF EXISTS checkpoint2;

CREATE DATABASE checkpoint2;

USE checkpoint2;

CREATE TABLE accessory(
  id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  name varchar(255) NOT NULL,
  url varchar(255) NOT NULL
);

create table cupcake(
  id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  name varchar(255) NOT NULL,
  color1 char(7) NOT NULL,
  color2 char(7) NOT NULL,
  color3 char(7) NOT NULL,
  accessory_id INT NOT NULL,
  created_at DATETIME
);

ALTER TABLE cupcake
ADD FOREIGN KEY (accessory_id) REFERENCES accessory(id);
