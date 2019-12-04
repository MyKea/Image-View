DROP DATABASE IF EXISTS Image_View;

CREATE DATABASE Image_View;

USE Image_View;

CREATE TABLE Products (
  id int NOT NULL AUTO_INCREMENT,
  name VARCHAR(50) NOT NULL,
  images int NOT NULL,
  videos int,
  videoPos int,
  PRIMARY KEY (ID)
);

/*  Execute this file from the command line by typing:
 *    mysql -u root < schema.sql -p
 *  to create the database and the tables.*/

 INSERT INTO Products VALUES (
   id,
   'ANTILOP',
   6,
   0,
   0
 );
  INSERT INTO Products VALUES (
   id,
   'TOBIAS',
   3,
   0,
   0
 );
  INSERT INTO Products VALUES (
   id,
   'HAVSTEN',
   8,
   1,
   2
 );
  INSERT INTO Products VALUES (
   id,
   'GLENN',
   7,
   0,
   0
 );
  INSERT INTO Products VALUES (
   id,
   'FRANKLIN',
   6,
   0,
   0
 );
  INSERT INTO Products VALUES (
   id,
   'JULES',
   7,
   0,
   0
 );
  INSERT INTO Products VALUES (
   id,
   'ÖRFJÄLL',
   7,
   0,
   0
 );
  INSERT INTO Products VALUES (
   id,
   'GRÖNADAL',
   7,
   0,
   0
 );
  INSERT INTO Products VALUES (
   id,
   'VÅGSBERG / SPORREN',
   7,
   0,
   0
 );
  INSERT INTO Products VALUES (
   id,
   'DIETMAR',
   0,
   0,
   0
 );
  INSERT INTO Products VALUES (
   id,
   'LANGUR',
   2,
   0,
   0
 );
  INSERT INTO Products VALUES (
   id,
   'JOKKMOKK',
   5,
   0,
   0
 );
  INSERT INTO Products VALUES (
   id,
   'STEFAN',
   7,
   0,
   0
 );
  INSERT INTO Products VALUES (
   id,
   'BALTSAR',
   6,
   0,
   0
 );
  INSERT INTO Products VALUES (
   id,
   'HARRY',
   5,
   0,
   0
 );
  INSERT INTO Products VALUES (
   id,
   'MARIUS',
   7,
   0,
   0
 );
  INSERT INTO Products VALUES (
   id,
   'MARTIN',
   5,
   0,
   0
 );
  INSERT INTO Products VALUES (
   id,
   'TROLLBERGET',
   6,
   1,
   2
 );
  INSERT INTO Products VALUES (
   id,
   'KOLON',
   2,
   0,
   0
 );
  INSERT INTO Products VALUES (
   id,
   'MALINDA',
   3,
   0,
   0
 );