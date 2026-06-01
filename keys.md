## KODUTÖÖ

[Select laused](select.md) | [Kasutaja loomine SQL Serveris-is](kasutaja.md) |  [Triggerid](trigerid.md) | [Kodutöö - Keys](keys.md)

Primary Key - Väli või väljade kombinatsioon, mis identifitseerib iga tabeli rea unikaalselt. 
Teda kasutatakse seoste loomiseks teiste tabelitega. Ta ei tohi sisaldada NULL väärtusi ning tabelis saab olla ainult üks Primary Key.

```sql

Näide:
CREATE TABLE Opilased (
opilane_id INT PRIMARY KEY,
nimi VARCHAR(50) );

```
<img width="545" height="381" alt="image" src="https://github.com/user-attachments/assets/e7d955ee-0a63-4835-a6b0-51a689cdce07" />


Foreign Key - Väli, mis viitab teise tabeli Primary Key-le. Teda kasutatakse andmete tervikluse tagamiseks. 
Ta erineb teistest sellega, et ta ei pea olema unikaalne ja tema eesmärk on luua seos teiste tabelitega.

```sql
Näide:
CREATE TABLE Klassid (
klass_id INT PRIMARY KEY,
klassi_nimi VARCHAR(20) );

CREATE TABLE Opilased (
opilane_id INT PRIMARY KEY,
nimi VARCHAR(50), klass_id INT,
FOREIGN KEY (klass_id) REFERENCES Klassid(klass_id) );

```
<img width="748" height="519" alt="image" src="https://github.com/user-attachments/assets/8e7aa2ed-17ec-4f1d-b0da-df4753e111c4" />


Unique Key - Tagab, et kõik väärtused veerus oleksid unikaalsed. Teda kasutatakse duplikaatandmete vältimiseks.
Ta erineb teistest sellega, et erinevalt primary key-st võib tabelis olla mitu unique key-d ning need võivad sisaldada null väärtust.

```sql
Näide:
CREATE TABLE Kasutajad (
kasutaja_id INT PRIMARY KEY,
email VARCHAR(100) UNIQUE );

```
<img width="619" height="398" alt="image" src="https://github.com/user-attachments/assets/fc79491e-bca6-498e-9ebf-4a2a16c24f93" />


Simple Key - See koosneb ainult ühest veerust. Teda kasutatakse lihtsaks kirjete identifitseerimiseks. 
Ta erineb teistest selle poolest, et ta koosneb ainult ühest veerust.

```sql
Näide:
CREATE TABLE Tooted (
toode_id INT PRIMARY KEY,
nimetus VARCHAR(100) );

```
<img width="553" height="361" alt="image" src="https://github.com/user-attachments/assets/1bbe37dd-58fc-4a48-bc3d-37adaa4ec78f" />


Composite Key - Ta koosneb kahest või enamast veerust. Teda kasutatakse selleks kui üks veerg ei taga unikaalsust. 
Ning ta erineb sellest, et unikaalsus saavutatakse mitme veeru kombinatsiooniga.

```sql
Näide:
CREATE TABLE Hinded (
opilane_id INT,
aine_id INT,
hinne INT,
PRIMARY KEY (opilane_id, aine_id)
);
```
<img width="672" height="424" alt="image" src="https://github.com/user-attachments/assets/6f310e3c-2d9c-4b2b-8715-aaa8bf0dab70" />


Compound Key - Ta on composite key eriliik, kus võtme osad võivad siis olla ka foreign key-d. Teda kasutatakse seostabelites ning ta erineb teistest selle poolest, et ta sisaldab tavaliselt viiteid teiste tabelite võtmetele.

```sql
Näide:
CREATE TABLE Opilane_Aine (
opilane_id INT,
aine_id INT,
PRIMARY KEY (opilane_id, aine_id),
FOREIGN KEY (opilane_id) REFERENCES Opilased(opilane_id),
FOREIGN KEY (aine_id) REFERENCES Ained(aine_id) );
```
<img width="856" height="440" alt="image" src="https://github.com/user-attachments/assets/537c993f-e1ad-4c0e-86b3-6feceaf6c944" />


Superkey - See võimaldab kirjeid unikaalselt tuvastada. Teda kasutatakse võimalike võtmete leidmiseks ning ta erineb teistest selle poolest, et ta võib sisaldada üleliigseid atribuute.
```sql
Näide:
CREATE TABLE Opetajad (
opetaja_id INT PRIMARY KEY,
email VARCHAR(100) UNIQUE,
nimi VARCHAR(50)
);
```
Superkey näited: opetaja_id, email, (opetaja_id, nimi).

<img width="604" height="439" alt="image" src="https://github.com/user-attachments/assets/5d759c73-971f-4ef2-85e7-109e9be7f680" />


Candidate Key - Ta on minimaalne superkey ning teda kasutatakse primary key kandidaadi leidmiseks. Ta erineb selle poolest et ta ei sisalda üleliigseid atribuute.
```sql
Näide:
CREATE TABLE Opetajad (
opetaja_id INT PRIMARY KEY,
email VARCHAR(100) UNIQUE
);
```
Candidate Key-d: opetaja_id, email.

<img width="661" height="431" alt="image" src="https://github.com/user-attachments/assets/f3cecf85-2d59-41b5-af03-2558676e70cc" />


Alternate Key - Ta on candidate key, mida ei valitud primary key-ks. 
Teda kasutatakse täiendava unikaalsuse tagamiseks ning ta erineb sellega, et ta on kandidaatvõti, kuid mitte Primary Key.
```sql
Näide:
CREATE TABLE Opetajad (
opetaja_id INT PRIMARY KEY,
email VARCHAR(100) UNIQUE
);
```
Primary Key = opetaja_id, Alternate Key = email

<img width="639" height="474" alt="image" src="https://github.com/user-attachments/assets/a7563b89-3153-47c8-b1e3-f9d651a9de10" />

```KASUTATUD ALLIKAD:
  Kasutatud AI-d ning tekst oma sõnadega ümber tehtud ning näited tõin ise.
https://dev.mysql.com/doc/
```


