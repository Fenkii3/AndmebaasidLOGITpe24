## SQL-vaated

[Select laused](select.md) | [Kasutaja loomine SQL Serveris-is](kasutaja.md) |  [Triggerid](trigerid.md) | [Kodutöö - Keys](keys.md) | [SQL-Protseduurid](protseduur.md) | [SQL-Vaated](vaade.md)

SQL-vaade (View) on virtuaalne tabel, mis põhineb ühe või mitme tabeli andmetel. Vaade ei salvesta tavaliselt andmeid eraldi, vaid kuvab päringu tulemust justkui tavalise tabelina.

Vaateid kasutatakse andmete lihtsamaks kuvamiseks, keerukate päringute peitmiseks ning kasutajatele piiratud ligipääsu võimaldamiseks. Vaate abil saab esitada ainult vajalikke veerge või ridu, ilma et kasutajal oleks otsene juurdepääs algsetele tabelitele.

Eelised
Lihtsustab keerukate päringute kasutamist.
Parandab andmete turvalisust.
Võimaldab kuvada ainult vajalikku informatsiooni.
Muudab andmebaasi kasutamise mugavamaks.
Aitab säilitada andmete loogilist struktuuri.

```sql
Näide
CREATE VIEW vw_ITEmployees
AS
SELECT
    EmployeeID,
    FirstName,
    LastName,
    Salary
FROM Employees
WHERE Department = 'IT';
GO

SELECT * FROM vw_ITEmployees;
```

<img width="446" height="472" alt="{658F20CE-9F4D-4C9F-9657-8C67B1478F41}" src="https://github.com/user-attachments/assets/86605c0b-308b-431f-879d-06f9476229d8" />
