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


Simple Key -

Composite Key -

Compound Key -

Superkey -

Candidate Key -

Alternate Key -
