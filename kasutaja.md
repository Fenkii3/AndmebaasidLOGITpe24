## SQL Server – Kasutajate autentimine ja õiguste haldamine

[Select laused](select.md) | [Kasutaja loomine SQL Serveris-is](kasutaja.md) |  [Triggerid](trigerid.md) | [Kodutöö - Keys](keys.md) | [SQL-Protseduurid](protseduur.md) | [SQL-Vaated](vaade.md)

Mis on autentimine SQL Serveris?
### Autentimine tähendab kasutaja tuvastamist ehk kontrollimist, kas kasutajal on õigus SQL Serverisse sisse logida.

**SQL Serveris kasutatakse kahte peamist autentimise tüüpi:**

1. Windows Authentication
Selle puhul kasutatakse samu kasutajaandmeid, millega logitakse sisse Windows operatsioonisüsteemi.

>Kasutajanimi ja parool on seotud Windowsiga
>Turvalisem lahendus
>Paroole haldab Windows
>Kasutaja ei pea eraldi SQL Serveri parooli teadma

2. SQL Server Authentication
>Selle puhul luuakse kasutaja otse SQL Serverisse.
>Kasutaja ei ole seotud Windowsiga.
>Määratakse eraldi kasutajanimi ja parool.
>Sobib veebirakenduste jaoks.
---------------------------------------------------------
**Näide kasutajast: DirectorKevin. Parool: director**
---------------------------------------------------------
Kasutaja loomine SQL Serveris
1. Serveritaseme kasutaja loomine (Login)
Sammud
Ava:

Security → Logins
Tee paremklikk ja vali:

New Login...

<img width="703" height="660" alt="{BD864038-6C0C-499C-A286-AB2BAD7D3249}" src="https://github.com/user-attachments/assets/cf8ef86c-7933-4518-ad83-0a9ac06e076a" />

Harjutamiseks võib eemaldada linnukese:  User must change password at next login.

**Server Roles**
Menüüst Server Roles saab määrata serveri üldised õigused.

Tavaliselt piisab rollist: public

<img width="704" height="655" alt="{625B9953-3D59-4BE1-A31F-05FF05041A1A}" src="https://github.com/user-attachments/assets/9a1a578d-2b61-47ab-865d-cc5e0dea937a" />

2. Andmebaasi kasutaja loomine (User)
Ava:

Database → Security → Users
Tee paremklikk:  New User...

Seosta kasutaja loginiga
<img width="228" height="301" alt="{62890C1B-455D-4EBA-AE47-0EEE79BC6495}" src="https://github.com/user-attachments/assets/94f529db-5dda-4473-8a63-9b582fb6cb4a" />

**Membership ja õigused**
Menüüst Membership saab määrata kasutaja rollid.

>db_datareader → võib lugeda SELECT
>db_datawriter → võib kirjutada INSERT, UPDATE, DELETE



<img width="508" height="319" alt="{E708D7A6-C8FF-4843-A6BE-2167F6F94749}" src="https://github.com/user-attachments/assets/2260d0b6-0bd2-4784-96dd-5d1958193bbc" />
---------------------------------------------------
## Kasutaja õiguste kontroll
1. Tuleb sisselogida kasutajaga directorKevin. Connect -> Database Engine

<img width="470" height="514" alt="{745B6BBE-01CE-4DAE-951D-E7FA08DC3DD6}" src="https://github.com/user-attachments/assets/ad62feef-5fd1-4de4-88a8-647be3fbc961" />


2. Saab tabeli sisu näha ja sisestada uus kiri.
<img width="433" height="247" alt="{59E0BF1F-E265-4034-9CB2-286B1CF66B7A}" src="https://github.com/user-attachments/assets/0d976e17-1ddd-4ca1-af08-3069d3418279" />


3. Kontrollime tegevus, mis ei ole lubatud kasutajale, näiteks tabeli loomine

<img width="466" height="280" alt="{DE1979D6-C3C6-4939-8D0E-83BBABD39452}" src="https://github.com/user-attachments/assets/c1c595fd-b275-4c55-a8de-d0881f6a363b" />


---------------------------------------------------
SQL Server Authentication Mode muutmine
Kui ilmub viga: Error 18456, siis on tavaliselt lubatud ainult Windows Authentication.
Lahendus
Server → Properties
Security
Vali: SQL Server and Windows Authentication mode
GRANT käsud õiguste jagamiseks
GRANT käsuga antakse kasutajale õigused.

```SQL
--GRANT - Õiguste määramine
--DENY - Õiguste keelamine

--db_datareader - SELECT
--db_datawriter - INSERT, DELETE, UPDATE

--anname kasutajale directorKevin õigus
--ainult kustutada ja uuendada tabelit
--(DELETE, UPDATE, SELECT)

GRANT DELETE ON puhkus TO directorKevin;
GRANT UPDATE ON puhkus TO directorKevin;
GRANT SELECT ON puhkus TO directorKevin;

--keelame INSERT
deny INSERT ON puhkus TO directorKevin;

```



<img width="737" height="930" alt="{F2D37369-B6BA-42CA-81D1-136569D1DA53}" src="https://github.com/user-attachments/assets/3b9a5e30-f517-421f-846b-9ca779e49e70" />


Käsk	Tähendus
SELECT	Lugemine
INSERT	Lisamine
UPDATE	Muutmine
DELETE	Kustutamine

<img width="373" height="536" alt="{5B152715-5A4B-414C-8B36-316CDA4CAF8D}" src="https://github.com/user-attachments/assets/0ac853d9-9145-4c4f-8ec3-bd9466c2fd54" />



    
Ülesanne 1:
Luua andmebaas: MovieBase

Luua tabelid: 

movies (id, moviesNimi, moviesYear, movieDir и movieCost).
guest (id, name)
Lisada vähemalt 7 kirjet.

Luua kasutaja Produtsent parooliga director, kellel on järgmised õigused:
Õigus vaadata ja uuendada tabeli movies välju movieDir ja movieCost + lisada üks enda valitud privileeg.
Õigus vaadata ja lisada kirjeid tabelisse guest.
Keela andmete kustutamine tabelis.
Vihje! UPDATE õigused parem lubada SQL käsuga
GRANT UPDATE (movieCost, movieDir)
ON movies
TO Produtsent;
