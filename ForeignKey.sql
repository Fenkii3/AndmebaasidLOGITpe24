create database KevinBaas;
use KevinBaas;
--Tabeli loomine
CREATE TABLE opilane(
opilaneId int Primary Key identity(1,1),
eesnimi varchar(25),
perekonnanimi varchar(30) not null,
synniaeg date,
pohitoetus bit,
aadress TEXT,
keskmineHinne decimal(2, 1))

SELECT * FROM opilane;

--uue veeru lisamine
ALTER TABLE opilane ADD telefon varchar(1);

--tabeli struktuuri muutmine -veeru kustutamine
ALTER TABLE opilane DROP COLUMN telefon ;

--tabeli muutmine - veeru andmetüübi vahetamine
ALTER TABLE opilane ALTER COLUMN telefon varchar(13);

--store procedure help, mis näitab tabeli struktuuri ja veerude andmetüübid.
sp_help opilane;

drop table ryhm;

CREATE TABLE ryhm(
ryhmID int NOT null,
ryhmNimi varchar(10));
Select * from ryhm;
--muudame tabeli ryhm ja lisame Primary key
ALTER TABLE ryhm ADD CONSTRAINT pk_ryhm Primary key (ryhmID);

--muudame tabeli ryhm ja teeme ryhmNimi unikaalseks UNIQUE
ALTER TABLE ryhm ADD CONSTRAINT un_ryhm UNIQUE (ryhmNimi);

sp_help ryhm;

--täidame tabeli ryhm
INSERT INTO ryhm(ryhmID, ryhmNimi)
VALUES (3, 'LOGITpe24'),(4, 'TITpe24');
Select * FROM ryhm;

--FOREIGN KEY  --opilane tabelis
--lisame opilane tabelisse uus veerg
ALTER TABLE opilane ADD ryhmID int;
SELECT * FROM opilane;
select * from ryhm;
--lisame ryhmID foreign key
ALTER TABLE opilane ADD CONSTRAINT fk_ryhm 
FOREIGN KEY (ryhmID) REFERENCES ryhm(ryhmID) --link tabel(PK veerg)

--Andmete lisamine tabelisse
INSERT INTO opilane(perekonnanimi, eesnimi, synniaeg)
VALUES ('Valge', 'Sall', '2003-10-23'),
('Sinine', 'Pall', '2002-10-1')

--Uuendame tabeliandmeid
UPDATE opilane SET aadress='Tallinn, Eesti'
UPDATE opilane SET pohitoetus=1 --1 on true
UPDATE opilane SET keskmineHinne=4.5;

--Kui soovime kõik veerud täita
INSERT INTO opilane
VALUES ('Nimi', 'perenimi', '2003-10-23', 0, 'Tartu, Eesti', 3.5)

--teine tabel
CREATE TABLE opilaneTunnis(
opilaneTunnisId int Primary Key identity(1,1),
kuupaev date not Null,
opilaneId int,
Foreign Key (opilaneId) References opilane(opilaneId), --tabel(PK veerg)
oppeaine varchar(25),
hinne int)
Select * from opilane;
Select * from opilaneTunnis;

--lisame andmeid opilaneTunnis tabelisse
INSERT INTO opilaneTunnis
VALUES ('2025-04-14', 2, 'keemia', 4);

--testTabel

Create table testTabel(
id int primary key):
--tabeli kustutamine
DROP TABLE testTabel
DROP Database päringud;

--tabelirida kustutamine
select * from opilane;
DELETE FROM opilane WHERE opilaneId=4;

CREATE TABLE opetaja(
opetajaId int PRIMARY KEY IDENTITY(1,1),
nimi varchar(25),
ruum varchar(25),)

INSERT INTO opetaja
VALUES ('Nimi', 213);

CREATE TABLE opetamine(
opetamineId int PRIMARY KEY IDENTITY(1,1),
opetajaId int,
Foreign Key (opetajaId) References opetaja(opetajaId),
oppeaine varchar(25),
maht int)

INSERT INTO opetamine
VALUES (1,'Matemaatika', 15);

Select * from opilane;
Select * from opetamine;
