## Triger - trigger - päästik

[Select laused](select.md) | [Kasutaja loomine SQL Serveris-is](kasutaja.md) |  [Triggerid](trigerid.md) | [Kodutöö - Keys](keys.md) | [SQL-Protseduurid](protseduur.md) | [SQL-Vaated](vaade.md)

### Triger - Andmebaasi objekt, mis käivitub automaatselt, kui toimub teatud sündmus (nt INSERT, UPDATE, DELETE).
Trigerite loomine - automatseerub protsessid SQL serveris

Tabelid, mis tuleb luua enne trigerit!
```SQL
create database trigerLOGITpe24
use trigerLOGITpe24

CREATE TABLE linnad(
linnId int primary key identity (1,1),
linnanimi varchar(30) unique,
maakond varchar(50),
rahvaarv int);
select * from linnad;

INSERT INTO linnad(linnanimi, maakond, rahvaarv)
VALUES ('Tallinn', 'Harjumaa', 600000)

--Tabel LOGI - Tabel, mis täidab trigeri, kui kasutaja täidab tabeli linnad.
CREATE TABLE Logi(
id int primary key identity (1,1),
kasutaja varchar(50),
aeg DATETIME,
andmed TEXT);
```

```SQL
--1. Triger lisatud andmete jälgimiseks tabelis linnad.
-- Jälgib linna sisestamine tabelisse ja teeb vastava kirje logi-tabelisse.

CREATE TRIGGER linnaLisamine
ON linnad -- Tabel, mida triger jälgib
FOR INSERT
AS
INSERT INTO logi(kasutaja, aeg, andmed)
SELECT
SYSTEM_USER,
GETDATE(),
CONCAT ('Lisatud:',inserted.linnanimi,', ',
inserted.maakond,', ', inserted.rahvaarv)
FROM inserted;

--Kontrollimiseks tuleb lisada linna tabelisse linnad.
INSERT INTO linnad(linnanimi, maakond, rahvaarv)
VALUES ('Viljandi', 'Viljandimaa', 50000)

SELECT * FROM linnad;
SELECT * FROM logi;

```
<img width="495" height="399" alt="{D9B6FED3-A6F9-4442-A4DD-8E6FBA7436E0}" src="https://github.com/user-attachments/assets/98ec3c14-930e-4fb4-a984-4b1b8525ef69" />

```SQL
--2. DELETE triger - jälgib kustutamine tabelis linnad ja teeb vastava kirje logi-tabelisse.
CREATE TRIGGER linnaKustutamin
ON linnad -- Tabel, mida triger jälgib
FOR DELETE
AS
INSERT INTO logi(kasutaja, aeg, andmed)
SELECT
SYSTEM_USER,
GETDATE(),
CONCAT('Kustutatud:',deleted.linnanimi,', ',
deleted.maakond,', ', deleted.rahvaarv)
FROM deleted;

--Kontroll
DELETE FROM linnad WHERE linnId=3;

SELECT * FROM linnad;
SELECT * FROM logi;
```
<img width="510" height="311" alt="{BCA3B6F3-50E5-4487-8961-EF13C6705C73}" src="https://github.com/user-attachments/assets/afbc9d7e-029f-4d0a-a584-4fdfcfee8c8a" />

```SQL
--3.UPDATE TRIGGER - Jälgib uuendused/muutused tabelis linnad
--ja teeb vastava kirje tabelis logi

CREATE TRIGGER linnaUuendamine
ON linnad -- Tabel, mida triger jälgib
FOR UPDATE
AS
INSERT INTO logi(kasutaja, aeg, andmed)
SELECT
SYSTEM_USER,
GETDATE(),
CONCAT('Vana andmed:',
deleted.linnanimi,', ',deleted.maakond,', ', deleted.rahvaarv,
' ||| uued andmed: ', 
inserted.linnanimi,', ',inserted.maakond,', ', inserted.rahvaarv)
FROM deleted INNER JOIN inserted
ON deleted.linnId=inserted.linnId;

--Kontroll
UPDATE linnad SET linnanimi='Tallinn22', rahvaarv=70000
WHERE linnId=1;

SELECT * FROM linnad;
SELECT * FROM logi;
```

<img width="579" height="283" alt="{09279638-F8C6-4F1F-B26D-836E0CC811F6}" src="https://github.com/user-attachments/assets/3922f83b-2d24-46d1-87ca-08fef6c8edbc" />

```sql
--Ühine triger, mis jälgib kas lisamine või kustutamine tabelisse linnad
CREATE TRIGGER linnaLisamineKustutamine
ON linnad -- Tabel, mida triger jälgib
FOR INSERT, DELETE
AS
BEGIN
SET NOCOUNT ON;
	INSERT INTO logi(kasutaja, aeg, andmed)
	SELECT
	SYSTEM_USER,
	GETDATE(),
	CONCAT ('Lisatud:',inserted.linnanimi,', ',
	inserted.maakond,', ', inserted.rahvaarv)
	FROM inserted

	UNION ALL

	SELECT
	SYSTEM_USER,
	GETDATE(),
	CONCAT ('Kustutatud:',deleted.linnanimi,', ',
	deleted.maakond,', ', deleted.rahvaarv)
	FROM deleted;
END;

--Kontroll
DELETE FROM linnad where linnId=3;

INSERT INTO linnad(linnanimi, maakond, rahvaarv)
VALUES ('Viljandi', 'Viljandimaa', 50000);


SELECT * FROM linnad;
SELECT * FROM logi;
```
<img width="571" height="314" alt="{F91A36B1-7E09-44ED-A082-A279BB4E4A02}" src="https://github.com/user-attachments/assets/2497d7f9-0488-472a-8dbf-4ce7bea5be7f" />

## XAMPP / mariaDB päästikud / trigerid
### INSERT TRIGER

1. Linna Lisamine päästik
<img width="540" height="562" alt="{C508A7C5-3EFB-4F96-9945-3CC6F85E8994}" src="https://github.com/user-attachments/assets/1b2f4b19-2555-43c1-bbe9-8498d9c38a5e" />

2. Kontrollimiseks
<img width="693" height="203" alt="{D7D5FED7-F298-4736-AC85-DB4001484D6C}" src="https://github.com/user-attachments/assets/406e7f12-336b-4418-8141-117f5066399e" />

3. Tulemus logi tabelist
<img width="607" height="85" alt="{EB04E0E2-6A86-4C5A-A3D5-4D48E37AAB3F}" src="https://github.com/user-attachments/assets/fdec30a3-a04b-4bf0-9677-545e051c091d" />

### DELETE TRIGER
<img width="528" height="429" alt="{87E7B2B7-F0B4-4AAF-82C3-4EB030880B5F}" src="https://github.com/user-attachments/assets/bed73f30-a5b6-4e22-8f82-368094c9609e" />

### UPDATE TRIGER

<img width="517" height="452" alt="{25444D7E-E4AB-46E4-945E-7F5890BC5730}" src="https://github.com/user-attachments/assets/ce827492-202c-4101-af30-db660156a297" />




