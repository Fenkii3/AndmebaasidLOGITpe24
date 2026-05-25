## Triger - trigger - päästik
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
```

