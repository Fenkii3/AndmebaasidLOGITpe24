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
