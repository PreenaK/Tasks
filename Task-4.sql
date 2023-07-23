show databases
create database assignment1;
use assignment1;
create table Movies1 (Movie_id int primary key,Title varchar(20),Release_year int,Director_id int, foreign key(Director_id)references Directors1(Director_id));
create table Directors1 (Director_id int primary key,Director_name varchar(20));
create table Genres1 (Genre_id int primary key,Genre_name varchar(20));
create table Movie_Genres1 (Movie_id int,Genre_id int,foreign key(Movie_id)references Movies1(Movie_id),foreign key(Genre_id)references Genres1(Genre_id));
insert into Directors1 values(401,'Rajamouli');
insert into Directors1 values(402,'Puri Jagannadh');
insert into Directors1 values(405,'Boyapati Srinu');
insert into Directors1 values(404,'Karthik Varma');
insert into Directors1 values(403,'Vamshi Paidipally');
insert into Movies1 values(301,'Bahubali',2017,401);
insert into Movies1 values(302,'Pokiri',2006,402);
insert into Movies1 values(303,'Akhanda',2021,405);
insert into Movies1 values(304,'Virupaksha',2023,404);
insert into Movies1 values(305,'Maharshi',2019,403);
insert into Genres1 values(502,'Historical drama');
insert into Genres1 values(501,'Crime Fiction');
insert into Genres1 values(505,'Action');
insert into Genres1 values(504,'Horror');
insert into Genres1 values(503,'Family drama');
insert into Movie_Genres1 values(301,502);
insert into Movie_Genres1 values(302,501);
insert into Movie_Genres1 values(303,505);
insert into Movie_Genres1 values(304,504);
insert into Movie_Genres1 values(305,503);
select Title,Director_name from Movies1 NATURAL JOIN Directors1;
select Title,Release_year,Director_name from Movies1 NATURAL JOIN Directors1;
select Director_name,Title from Directors1 NATURAL JOIN Movies1;
select Title,Release_year,Director_name from Movies1 NATURAL JOIN Directors1;
select Title,Genre_name from Genres1 NATURAL JOIN Movie_Genres1 NATURAL JOIN Movies1;