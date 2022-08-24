/*
DDL - DATA DEFINITION LANG.
CREATE - ALTER - DROP
*/
-- CREATE - TABLO OLUSTURMA -
CREATE table ogrenci(
ogr_no int,
ogr_isim varchar(30),
notlar real,	
yas int,
adres varchar(50),
kyt_trh date
);
-- varolan tablodan yeni bir tablo olusturma
CREATE table ogr_notlari
AS 
SELECT ogr_no, notlar FROM ogrenci; 

SELECT * FROM ogrenci;
SELECT * FROM ogr_notlari;
/*
 Insert into TabloAdı (Kolonadi1,Kolonadi2,Kolonadi3...) values (deger1,deger2,deger3..)
*/
INSERT into ogrenci (ogr_no,ogr_isim,notlar,yas,adres,kyt_trh) values(1,'Ersin Akun',100,33,'Istanbul / gop','23.08.2022');
INSERT into ogrenci (ogr_no,ogr_isim,notlar,yas,adres,kyt_trh) values(2,'Ali Can',90,31,'Ankara / gop','22.08.2022');
INSERT into ogrenci (ogr_no,ogr_isim,notlar,yas,adres,kyt_trh) values(3,'Orhan Dogan',95,33,'Izmir/Bornova','24.08.2022');
DELETE from ogrenci where ogr_no = 3;