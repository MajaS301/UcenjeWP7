use edunovawp7;

select * from smjerovi;


select 1;

select *, naziv, 1 as iznos, getdate() as datum from smjerovi;

select naziv as predmet, getdate() as datumpocetka from smjerovi;

select sifra, naziv from smjerovi;

select ime, prezime from polaznici;

select * from smjerovi 
where not (sifra=1 or sifra=4);

select * from polaznici
where prezime like '%r%';

select * from polaznici where sifra>=10 and sifra<=15;
select * from polaznici where sifra between 10 and 15;

select * from polaznici where sifra=10 or sifra=15 or sifra=1;
select * from polaznici where sifra in (10,15,1);

select * from polaznici where ime like '%a';

select * from smjerovi;

update smjerovi 
set izvodiseod='2024-10-02 18:30'
where sifra=4;

select * from smjerovi
where izvodiseod between '2021-01-01' and '2024-06-30'


use knjiznica

select prezime, ime from autor order by prezime asc, ime desc;
select prezime, ime from autor order by 1 asc, 2 desc;

select top 10 percent * from autor;

select top 10 * from mjesto;

select top 10 * from autor 


INSERT into autor	(sifra, ime, prezime, datumrodenja)  
values	(5,'Maja','Šteler', '2004-01-30');

select top 10 * from autor
select count(*) from katalog; -- koliko ima zapisa

select * from katalog
where naslov like '%ljubav%' and
sifra in (2541,2660,2664,2938);

select count(*) from izdavac;

select * from izdavac
where naziv like '%d.%o%o%' or naziv like '%d%o%o.%';


use svastara;
select count(*) from Artikli;