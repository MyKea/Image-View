DROP DATABASE IF EXISTS Image_View;

CREATE DATABASE Image_View;

USE Image_View;

CREATE TABLE Products (
  id int NOT NULL AUTO_INCREMENT,
  name VARCHAR(50) NOT NULL,
  images int NOT NULL,
  videos int,
  PRIMARY KEY (ID)
);

/*  Execute this file from the command line by typing:
 *    mysql -u root < schema.sql -p
 *  to create the database and the tables.*/

 INSERT INTO Products VALUES (
   id,
   'ANTILOP',
   6,
   0
 );
  INSERT INTO Products VALUES (
   id,
   'TOBIAS',
   3,
   0
 );
  INSERT INTO Products VALUES (
   id,
   'HAVSTEN',
   8,
   1
 );
  INSERT INTO Products VALUES (
   id,
   'GLENN',
   7,
   0
 );
  INSERT INTO Products VALUES (
   id,
   'FRANKLIN',
   6,
   0
 );