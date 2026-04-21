--Iseseisvalt: Vali tabel ja kirjuta 3 protseduuri, käivita
CREATE PROCEDURE uusKategooria
@nimi varchar(15)
AS
BEGIN
	INSERT INTO stocks
	VALUES (1,1,100);
	SELECT * FROM stocks;
END
--kutse
EXEC lisaKategooria 'test';

CREATE PROCEDURE kustutaProdukt
@id int
AS
BEGIN
	SELECT * FROM stocks;
	DELETE FROM stocks WHERE product_id=@id;
	SELECT * FROM stocks;
END
--kutse
EXEC kustutaProdukt 1;

CREATE PROCEDURE uuendaBrand
@id int,
@uuendatudNimi varchar(20)
AS
BEGIN
	SELECT * FROM Brands;
	UPDATE Brands SET brand_name=@uuendatudNimi
	WHERE brand_id=@id;
	SELECT * FROM Brands;
END
--kutse
EXEC uuendaBrand 2, 'Quicksilver'
