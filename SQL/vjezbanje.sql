use master 
go
drop database if exists practice;
go
create database practice;
go
use practice;

create table ispitnirokovi (
sifra int, 
predmet varchar(50),
vrstaIspita varchar(50),
datum datetime,
pristupio varchar(50)
);


create table pristupnici(
ispitnirok datetime,
student varchar(50),
brojbodova int,
ocjena varchar(50)
);