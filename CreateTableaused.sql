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
