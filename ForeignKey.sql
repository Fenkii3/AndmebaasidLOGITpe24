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
