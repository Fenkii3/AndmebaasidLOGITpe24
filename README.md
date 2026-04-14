# AndmebaasidLOGITpe24
Andmebaasidega seotud SQL kood ja konspektid

- SQL - Structured Query Language (Struktureeritud päringukeel)
- DDL - Data Definition Language (Andmebaasi struktuuri loomiseks) - CREATE, ALTER
- DML - Data Manipulation Language (Andmete lisamine tabelisse ja uuendamine tabelis) - INSERT, UPDATE, DELETE


### Tunnis me kasutame andmebaasihaldussüsteemid:
1. SQL Server Managment Studio (SQL Serveri haldamiseks) <img width="504" height="524" alt="{6867BA6E-4C6E-4328-9695-ED846BEABA02}" src="https://github.com/user-attachments/assets/76fcf43b-8948-4aa5-9a7b-53232a151ddf" />

2. XAMPP -phpmyAdmin (mariaDB andmebaas) -vabavara

  ## Põhimõisted

- Andmebaas - Struktureeritud andmete kogum.
- Tabel - Olem (Entity)
- Veerg - Väli (Field)
- Rida - Kirje (Record)
- Primaarne võti -PK- Primary Key - veerg (Tavaliselt nimega id) unikaalse identifikaatoriga, mis eristab iga kirjet.
- Välisvõti (Võõrvõti) -FK Foreign Key - veerg, mis loob seose teise tabeli primaarvõtmega.

  ## Andmetüübid
  - INT, float, decimal(6,2) - Numbrilised
  - varchar(50), char(6) - Tekst / Sümbolid
  - boolean, bool, bit - Loogiline tüüp
  - date, time, datetime - Kuupäeva
 
## Piirangud
```
1. Primary Key
2. Foreign Key
3. Unique
4. NOT NULL
5. CHECK
```

## Tabelivahelised Seosed
- Üks  - Ühele (nt mees --naine)
- Üks  - Mitmele (õpilane käib erinevates õppeainetes)
  <img width="350" height="200" alt="{83ED1AC0-D4BF-4968-8EBA-4DB471297308}" src="https://github.com/user-attachments/assets/2084935b-14cf-4158-a269-dbfab9e6aa66" />

- Mitu - Mitmele (nt õpilane - õpetaja)

