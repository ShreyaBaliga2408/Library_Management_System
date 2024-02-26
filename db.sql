show databases;
create database LibraryDB;
show databases;
use LibraryDB;
create database librarysql;
use librarysql;
CREATE TABLE book(name varchar(20), author varchar(20), pageNumber int, ISBN int, quantity int);
SHOW TABLES;
DESCRIBE book;
INSERT into librarysql.book VALUES("harrypotter","jkrowling","50","9783","30");
SELECT *from librarysql.book where isbn="9783";
INSERT into librarysql.book VALUES("GOT","XY","100","978345","20");
INSERT into librarysql.book VALUES("threeidiots","nisha","150","9793","30");
INSERT into librarysql.book VALUES("twostates","chetanbhagat","250","97103","40");
INSERT into librarysql.book VALUES("lifeinametro","sandeep","350","9753","50");
INSERT into librarysql.book VALUES("kaipoche","shreya","450","9743","60");
INSERT into librarysql.book VALUES("halfgirlfriend","neha","550","9723","90");
INSERT into librarysql.book VALUES("studentoftheyear","savitha","650","9733","100");
INSERT into librarysql.book VALUES("dildhadaknedo","shyam","750","97193","110");
INSERT into librarysql.book VALUES("localtrain","anuja","850","97293","130");
CREATE TABLE person(id int,name varchar(20),surname varchar(20),password varchar(20),isAdmin boolean, hasFine boolean);
drop table person; 
 CREATE TABLE person(id int NOT NULL AUTO_INCREMENT ,name varchar(20),surname varchar(20),password varchar(20),isAdmin boolean, hasFine boolean,PRIMARY KEY(id)); 
INSERT INTO person(name,surname,password,isAdmin,hasFine) VALUES("shreyaneha","baliga","munniS2408#",true,false);
INSERT INTO person(name,surname,password,isAdmin,hasFine) VALUES("anuja","patil","munnipammiS2408#",false,true);
describe person;
select *from person where name="anuja";
CREATE TABLE person (
  id INT NOT NULL,
  name VARCHAR(50) NOT NULL,
  surname VARCHAR(50) NOT NULL,
  password VARCHAR(100) NOT NULL,
  isAdmin BOOLEAN NOT NULL,
  hasFine BOOLEAN NOT NULL,
  BookReceived INT DEFAULT NULL,
  BookReadBefore INT DEFAULT NULL,
  deadline DATE DEFAULT NULL,
  PRIMARY KEY (id)
);
drop table person;
#if is admin
INSERT INTO person (id, name, surname, password, isAdmin, hasFine)
VALUES (1, "shreyaneha", "baliga", "munnipammiS2408#", true, false);

#if not admin
INSERT INTO person(id,name,surname,password,isAdmin,hasFine,BookReceived,BookReadBefore,deadline) VALUES
(121,"anuja","patil","munniS2408#",false,true,9783,978345,'1999-08-24');
