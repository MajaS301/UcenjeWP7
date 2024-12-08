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


create table igrac(
sifra int not null primary key identity (2,2),
ime varchar (50) not null,
prezime varchar(50) not null,
datum_rodenja date not null,
pozicija varchar(50),
broj_dresa varchar(10),
klub varchar (50) not null references klub(naziv)
);


create table trener(
sifra int not null primary key identity (2,2),
ime varchar (50) not null,
prezime varchar(50) not null,
klub varchar(50) not null references klub(naziv),
nacionalnost varchar(50),
iskustvo varchar(10)
);