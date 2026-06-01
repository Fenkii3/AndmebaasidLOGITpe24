## SQL-vaated

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
CREATE VIEW KallidTooted AS
SELECT TooteID, Nimi, Hind
FROM Tooted
WHERE Hind > 500;

Vaate kasutamine:

SELECT * FROM KallidTooted;
```

Selles näites luuakse vaade KallidTooted, mis kuvab ainult need tooted, mille hind on suurem kui 500 eurot. Vaadet saab kasutada samamoodi nagu tavalist tabelit.
