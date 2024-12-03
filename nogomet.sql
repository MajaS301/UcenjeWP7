use master
go
drop database if exists nogomet;
go
create database nogomet;
go
use nogomet;
go

create table klub(
sifra int not null identity (2,2),
naziv varchar (50) not null primary key,
osnovan int,
stadion varchar (50),
predsjednik varchar (50) not null,
drzava varchar (50) not null,
liga varchar (20)
);


create table utakmica(
sifra int not null primary key identity(2,2),
datum date,
vrijeme time,
lokacija varchar (50),
stadion varchar (50) not null,
domaci_klub varchar(50) not null references klub(naziv),
gostujuci_klub varchar (50) not null references klub(naziv)
);