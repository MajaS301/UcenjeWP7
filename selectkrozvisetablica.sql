select a.naziv, b.naziv as grupa, b.predavac
from smjerovi a inner join grupe b
on a.sifra=b.smjer


select a.naziv, b.naziv as grupa, b.predavac
from smjerovi a left join grupe b
on a.sifra=b.smjer


select b.naziv as grupa,
a.naziv as smjer,
d.ime, d.prezime
from smjerovi a 
left join grupe b on a.sifra=b.smjer
left join clanovi c on b.sifra=c.grupa
left join polaznici d on d.sifra=c.polaznik;



update grupe set predavac='Karla Let' where sifra=4


select * from smjerovi;