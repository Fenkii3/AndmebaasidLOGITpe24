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
CREATE PROCEDURE LisaToode
    @Nimi VARCHAR(100),
    @Hind DECIMAL(10,2)
AS
BEGIN
    INSERT INTO Tooted (Nimi, Hind)
    VALUES (@Nimi, @Hind);
END;

Protseduuri käivitamine:

EXEC LisaToode 'Sülearvuti', 999.99;
```
Selles näites luuakse protseduur LisaToode, mis lisab tabelisse Tooted uue kirje kasutaja määratud nime ja hinnaga.
