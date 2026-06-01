## SQL-protseduurid

[Select laused](select.md) | [Kasutaja loomine SQL Serveris-is](kasutaja.md) |  [Triggerid](trigerid.md) | [Kodutöö - Keys](keys.md) | [SQL-Protseduurid](protseduur.md) | [SQL-Vaated](vaade.md)

SQL-protseduur (Stored Procedure) on andmebaasi salvestatud SQL-käskude kogum, mida saab korduvalt käivitada ühe käsuga. Protseduurid võimaldavad automatiseerida andmetöötlust, vähendada koodi dubleerimist ning parandada rakenduse jõudlust.

Protseduur võib vastu võtta parameetreid, teha päringuid, lisada, muuta või kustutada andmeid ning tagastada tulemusi. Kuna protseduurid salvestatakse andmebaasi serverisse, saab neid kasutada erinevates rakendustes ilma sama SQL-koodi uuesti kirjutamata.

Eelised
Vähendab korduva SQL-koodi hulka.
Parandab andmebaasi turvalisust.
Lihtsustab andmebaasi haldamist.
Võib parandada päringute jõudlust.
Võimaldab keerukamat äriloogikat andmebaasi tasemel.
```sql
Näide
CREATE PROCEDURE sp_ShowEmployees
AS
BEGIN
    SELECT *
    FROM Employees;
END;
GO

EXEC sp_ShowEmployees;
```
<img width="499" height="406" alt="{B8AF67E7-C64E-42A9-966D-C54282CD3917}" src="https://github.com/user-attachments/assets/0e4ed7c0-f662-4dc1-be7c-a36f1ec403db" />

