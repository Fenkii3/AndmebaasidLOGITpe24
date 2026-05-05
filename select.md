<img width="945" height="551" alt="{205904E3-9B53-4296-A8EF-209E94BCFDFB}" src="https://github.com/user-attachments/assets/c7a755b3-ddda-4a9c-bee4-2f15801a69fa" />

```sql
create database selectAllik;
use selectAllik;
create table auto(
autonumber char(6) primary key,
mark varchar(30), 
mudel varchar(50),
v_aasta int,
varv varchar(50),
hind money);

select * from auto;
--mockaroo.com -- kasutame andmete genereerimiseks

insert into auto (autonumber, mark, mudel, v_aasta, varv, hind) values ('160lis', 'Lincoln', 'MKZ', 2007, 'Maroon', '$9752.18');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind) values ('832lZt', 'Pontiac', 'Sunbird', 1987, 'Purple', '$8050.23');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind) values ('8469Du', 'Honda', 'Odyssey', 2006, 'Pink', '$5515.87');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind) values ('331d87', 'Mercury', 'Cougar', 1991, 'Indigo', '$673.99');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind) values ('128NjO', 'Suzuki', 'Samurai', 1995, 'Purple', '$9091.75');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind) values ('702PUn', 'Bentley', 'Continental GT', 2006, 'Crimson', '$3150.90');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind) values ('574CpL', 'Mazda', 'Miata MX-5', 2001, 'Indigo', '$8182.79');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind) values ('644qds', 'Toyota', 'Supra', 1993, 'Pink', '$3904.32');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind) values ('272gQj', 'Studebaker', 'Avanti', 1963, 'Pink', '$5439.23');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind) values ('895cQr', 'Infiniti', 'QX56', 2012, 'Purple', '$9743.99');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind) values ('6027cV', 'Nissan', 'Frontier', 2001, 'Teal', '$561.63');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind) values ('635VJf', 'MINI', 'Cooper', 2005, 'Indigo', '$4069.78');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind) values ('327JpD', 'GMC', 'Jimmy', 1998, 'Aquamarine', '$9377.63');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind) values ('842Xzg', 'Lotus', 'Esprit', 1990, 'Goldenrod', '$2260.28');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind) values ('511JzM', 'Ford', 'Ranger', 1997, 'Khaki', '$881.85');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind) values ('933DrY', 'BMW', '600', 1958, 'Maroon', '$5760.25');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind) values ('556TU1', 'Cadillac', 'Eldorado', 1995, 'Teal', '$9.16');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind) values ('709qQV', 'Volkswagen', 'GTI', 1988, 'Fuscia', '$4786.12');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind) values ('824yjF', 'Dodge', 'Ram 1500', 1995, 'Indigo', '$3052.91');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind) values ('368bEP', 'Lotus', 'Esprit', 1993, 'Mauv', '$4482.79');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind) values ('757B5y', 'Mazda', 'Mazda5', 2009, 'Turquoise', '$5767.49');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind) values ('272o9r', 'Mitsubishi', 'Tredia', 1984, 'Mauv', '$8815.46');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind) values ('343Q8z', 'Chevrolet', 'Avalanche', 2010, 'Orange', '$9730.52');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind) values ('047Qpg', 'Honda', 'Civic', 1991, 'Khaki', '$1798.68');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind) values ('15184k', 'Chevrolet', 'Cobalt', 2005, 'Khaki', '$1099.05');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind) values ('336WCV', 'Cadillac', 'CTS', 2004, 'Fuscia', '$6316.45');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind) values ('218HCk', 'Jeep', 'Grand Cherokee', 2009, 'Indigo', '$5716.53');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind) values ('1437Zp', 'Honda', 'Prelude', 1996, 'Pink', '$9902.70');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind) values ('049Nt8', 'Daewoo', 'Nubira', 1999, 'Crimson', '$9270.17');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind) values ('806KLA', 'BMW', 'X5', 2012, 'Turquoise', '$8067.48');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind) values ('22679X', 'Lotus', 'Elise', 2008, 'Mauv', '$5874.45');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind) values ('679lkQ', 'Chevrolet', 'Lumina', 1994, 'Crimson', '$8685.94');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind) values ('571u9c', 'Plymouth', 'Breeze', 1998, 'Green', '$9521.10');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind) values ('501g6y', 'Ford', 'Focus', 2003, 'Crimson', '$8701.11');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind) values ('351eBK', 'Cadillac', 'DTS', 2008, 'Orange', '$7981.99');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind) values ('053AQz', 'Isuzu', 'Ascender', 2003, 'Maroon', '$3344.55');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind) values ('023ZYh', 'Chevrolet', 'Corvette', 1994, 'Purple', '$8843.11');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind) values ('0418RV', 'Mitsubishi', 'Endeavor', 2010, 'Purple', '$6557.33');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind) values ('286Coa', 'Lexus', 'IS', 2010, 'Maroon', '$4955.39');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind) values ('988sXE', 'Lincoln', 'Continental', 1984, 'Turquoise', '$6537.99');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind) values ('673svi', 'Porsche', '911', 2003, 'Yellow', '$2517.24');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind) values ('919Bmx', 'Volkswagen', 'GTI', 1988, 'Mauv', '$2831.66');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind) values ('378PcP', 'Daihatsu', 'Rocky', 1992, 'Mauv', '$2908.71');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind) values ('2068lh', 'Lincoln', 'Continental Mark VII', 1988, 'Khaki', '$4805.27');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind) values ('529g5J', 'Maybach', '57', 2006, 'Fuscia', '$4659.20');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind) values ('2826FK', 'Jaguar', 'XF', 2011, 'Red', '$736.56');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind) values ('001ofw', 'Saab', '9000', 1991, 'Crimson', '$9926.60');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind) values ('846Yak', 'Geo', 'Tracker', 1995, 'Maroon', '$1309.56');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind) values ('026fhr', 'Toyota', 'Matrix', 2008, 'Maroon', '$5622.09');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind) values ('989eA0', 'Isuzu', 'Amigo', 2000, 'Khaki', '$3941.12');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind) values ('546KpT', 'Jaguar', 'XK', 2008, 'Purple', '$5169.02');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind) values ('443KBv', 'Chevrolet', 'Metro', 1998, 'Puce', '$9726.69');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind) values ('017WbS', 'Mercury', 'Milan', 2007, 'Goldenrod', '$3189.13');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind) values ('368Hy0', 'Jeep', 'Liberty', 2008, 'Pink', '$431.16');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind) values ('616sIa', 'Suzuki', 'Sidekick', 1997, 'Blue', '$2507.26');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind) values ('3587yk', 'Toyota', 'Echo', 2005, 'Pink', '$3383.04');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind) values ('6705N2', 'Mazda', 'Mazda3', 2011, 'Orange', '$6704.26');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind) values ('4206ZL', 'Buick', 'Park Avenue', 1994, 'Mauv', '$3390.06');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind) values ('735Abl', 'Plymouth', 'Roadrunner', 1969, 'Maroon', '$1285.17');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind) values ('352lgC', 'Mazda', 'Mazdaspeed 3', 2008, 'Puce', '$9382.12');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind) values ('373hDH', 'Nissan', '240SX', 1995, 'Pink', '$9950.60');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind) values ('308xbm', 'Toyota', 'Corolla', 2003, 'Teal', '$7371.94');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind) values ('492VfJ', 'Honda', 'Pilot', 2008, 'Aquamarine', '$5982.52');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind) values ('883CFK', 'Cadillac', 'Escalade ESV', 2012, 'Fuscia', '$4949.15');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind) values ('151n20', 'Hyundai', 'Tiburon', 1999, 'Blue', '$2958.08');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind) values ('551Cy1', 'Mercury', 'Cougar', 1991, 'Teal', '$6513.62');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind) values ('103jvI', 'GMC', 'Acadia', 2011, 'Turquoise', '$5996.21');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind) values ('061e7M', 'Subaru', 'Loyale', 1991, 'Turquoise', '$4102.64');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind) values ('247MHu', 'Chevrolet', 'Colorado', 2004, 'Puce', '$5032.86');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind) values ('706x2b', 'Toyota', 'Sequoia', 2012, 'Indigo', '$696.04');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind) values ('594JwY', 'Chevrolet', 'Monte Carlo', 2004, 'Crimson', '$6194.08');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind) values ('298wBx', 'Chevrolet', 'Corvette', 1961, 'Violet', '$3641.11');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind) values ('023uQl', 'Ford', 'Mustang', 2005, 'Purple', '$4156.97');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind) values ('144n9Q', 'Saturn', 'S-Series', 1994, 'Crimson', '$3790.18');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind) values ('971RNL', 'Toyota', 'RAV4', 1998, 'Aquamarine', '$4958.17');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind) values ('434z4Y', 'Mitsubishi', 'Lancer Evolution', 2011, 'Turquoise', '$5738.84');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind) values ('748YWV', 'Chevrolet', 'HHR', 2011, 'Aquamarine', '$2999.42');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind) values ('420crg', 'Chevrolet', 'Monte Carlo', 2003, 'Crimson', '$3249.24');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind) values ('440cSP', 'Ford', 'Escort', 1997, 'Goldenrod', '$3802.06');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind) values ('802Z6w', 'Lexus', 'SC', 1992, 'Green', '$2384.19');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind) values ('4586BY', 'Volkswagen', 'Jetta', 2004, 'Puce', '$1137.06');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind) values ('609hRm', 'Chevrolet', 'Cavalier', 1999, 'Mauv', '$3999.01');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind) values ('819iwQ', 'Suzuki', 'SJ', 1988, 'Crimson', '$9468.37');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind) values ('079Mwi', 'Mercedes-Benz', 'SL-Class', 2012, 'Indigo', '$2924.66');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind) values ('842zhK', 'Land Rover', 'LR2', 2012, 'Puce', '$6104.34');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind) values ('7688EM', 'Audi', '90', 1988, 'Aquamarine', '$3253.55');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind) values ('753nDk', 'Lexus', 'RX', 2000, 'Fuscia', '$526.92');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind) values ('604t2c', 'Mitsubishi', 'Mighty Max', 1986, 'Violet', '$2147.63');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind) values ('379DM0', 'Buick', 'Regal', 1985, 'Green', '$444.42');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind) values ('812KUD', 'Chrysler', 'Concorde', 1995, 'Teal', '$2921.13');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind) values ('799Zk5', 'BMW', 'M3', 2005, 'Purple', '$2811.72');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind) values ('077B9K', 'Volkswagen', 'Touareg', 2009, 'Violet', '$8633.27');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind) values ('918k6j', 'Kia', 'Rio', 2005, 'Puce', '$5351.88');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind) values ('368stP', 'Toyota', 'Celica', 1992, 'Red', '$312.05');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind) values ('094Ob9', 'Lincoln', 'Continental Mark VII', 1989, 'Goldenrod', '$4148.10');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind) values ('434YRv', 'Isuzu', 'Rodeo', 1999, 'Crimson', '$1386.76');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind) values ('917DfG', 'Lincoln', 'Mark LT', 2006, 'Purple', '$2257.84');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind) values ('390Dwi', 'Chevrolet', 'Malibu', 2001, 'Blue', '$7479.09');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind) values ('620rlM', 'Kia', 'Rio', 2005, 'Red', '$7817.83');
insert into auto (autonumber, mark, mudel, v_aasta, varv, hind) values ('124tZm', 'Chevrolet', 'Express 3500', 2001, 'Pink', '$8525.60');
```

```
--Näita kõik
Select * from auto;
--Näita ainult mark, mudel ja hind
Select mark, mudel, hind from auto;
--tingimused
--sorteerimine - ORDER by -kasvavalt, DESC - kahanevalt
Select mark, mudel, hind
from auto
ORDER by hind DESC;

```
<img width="333" height="478" alt="{0A7AEACC-E27F-43E7-A8FD-FAAD12C766FF}" src="https://github.com/user-
attachments/assets/49f6d210-173a-42d9-aaf8-46df9380a9de" />

```
