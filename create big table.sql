-- DROP TABLE db_dom
CREATE DATABASE db_dom
GO
USE db_dom
GO
CREATE TABLE TBL_clients
(
	PK_client UniqueIdentifier PRIMARY KEY DEFAULT newid(),
	nom NVARCHAR(50) ,
	prenom NVARCHAR(50),
	date_facture DATETIME,
	montant DECIMAL(18,2),
	departement INT,
	information NVARCHAR(500),
	photo VARBINARY(MAX)
	)
-- 1 ligne
INSERT INTO TBL_clients(nom, prenom, date_facture,montant, departement,information)
VALUES (newid(),newid(), '2024-01-01', ABS(CHECKSUM(NewId())) % 1000, RAND()*20,'cheval')

-- 2 lignes
INSERT INTO TBL_clients(nom, prenom, date_facture,montant, departement,information)
SELECT newid(),newid(),DATEADD(month,1,date_facture), ABS(CHECKSUM(NewId())) % 1000, RAND()*20,'habit '+information
FROM TBL_clients

-- 4 lignes
INSERT INTO TBL_clients(nom, prenom, date_facture,montant, departement,information)
SELECT newid(),newid(),DATEADD(month,1,date_facture), ABS(CHECKSUM(NewId())) % 1000, RAND()*20,'maison '+information
FROM TBL_clients

-- 8 lignes
INSERT INTO TBL_clients(nom, prenom, date_facture,montant, departement,information)
SELECT newid(),newid(),DATEADD(month,1,date_facture), ABS(CHECKSUM(NewId())) % 1000, RAND()*20,'voiture '+information
FROM TBL_clients

-- 16 lignes
INSERT INTO TBL_clients(nom, prenom, date_facture,montant, departement,information)
SELECT newid(),newid(),DATEADD(month,1,date_facture), ABS(CHECKSUM(NewId())) % 1000, RAND()*20,'Jolie '+information
FROM TBL_clients

-- 32 lignes
INSERT INTO TBL_clients(nom, prenom, date_facture,montant, departement,information)
SELECT newid(),newid(),DATEADD(month,1,date_facture), ABS(CHECKSUM(NewId())) % 1000, RAND()*20,'arbre '+information
FROM TBL_clients

-- 64 lignes
INSERT INTO TBL_clients(nom, prenom, date_facture,montant, departement,information)
SELECT newid(),newid(),DATEADD(month,1,date_facture), ABS(CHECKSUM(NewId())) % 1000, RAND()*20,'chaise '+information
FROM TBL_clients

-- 128 lignes
INSERT INTO TBL_clients(nom, prenom, date_facture,montant, departement,information)
SELECT newid(),newid(),DATEADD(month,1,date_facture), ABS(CHECKSUM(NewId())) % 1000, RAND()*20,'fourchette '+information
FROM TBL_clients

-- 256 lignes
INSERT INTO TBL_clients(nom, prenom, date_facture,montant, departement,information)
SELECT newid(),newid(),DATEADD(month,1,date_facture), ABS(CHECKSUM(NewId())) % 1000, RAND()*20,'loup '+information
FROM TBL_clients

-- 512 lignes
INSERT INTO TBL_clients(nom, prenom, date_facture,montant, departement,information)
SELECT newid(),newid(),DATEADD(month,1,date_facture), ABS(CHECKSUM(NewId())) % 1000, RAND()*20,'le '+information
FROM TBL_clients

-- 1024 lignes
INSERT INTO TBL_clients(nom, prenom, date_facture,montant, departement,information)
SELECT newid(),newid(),DATEADD(month,1,date_facture), ABS(CHECKSUM(NewId())) % 1000, RAND()*20,'mangé '+information
FROM TBL_clients

-- 2048 lignes
INSERT INTO TBL_clients(nom, prenom, date_facture,montant, departement,information)
SELECT newid(),newid(),DATEADD(month,1,date_facture), ABS(CHECKSUM(NewId())) % 1000, RAND()*20,'a '+information
FROM TBL_clients

-- 4096 lignes
INSERT INTO TBL_clients(nom, prenom, date_facture,montant, departement,information)
SELECT newid(),newid(),DATEADD(month,1,date_facture), ABS(CHECKSUM(NewId())) % 1000, RAND()*20,'l''agneau '+information
FROM TBL_clients

-- 8192 lignes
INSERT INTO TBL_clients(nom, prenom, date_facture,montant, departement,information)
SELECT newid(),newid(),DATEADD(month,1,date_facture), ABS(CHECKSUM(NewId())) % 1000, RAND()*20,'hier '+information
FROM TBL_clients

-- 16K lignes
INSERT INTO TBL_clients(nom, prenom, date_facture,montant, departement,information)
SELECT newid(),newid(),DATEADD(month,1,date_facture), ABS(CHECKSUM(NewId())) % 1000, RAND()*20,'que '+information
FROM TBL_clients

-- 32K lignes
INSERT INTO TBL_clients(nom, prenom, date_facture,montant, departement,information)
SELECT newid(),newid(),DATEADD(month,1,date_facture), ABS(CHECKSUM(NewId())) % 1000, RAND()*20,'vu '+information
FROM TBL_clients

-- 64K lignes
INSERT INTO TBL_clients(nom, prenom, date_facture,montant, departement,information)
SELECT newid(),newid(),DATEADD(month,1,date_facture), ABS(CHECKSUM(NewId())) % 1000, RAND()*20,'J''ai '+information
FROM TBL_clients

-- 128K lignes
INSERT INTO TBL_clients(nom, prenom, date_facture,montant, departement,information)
SELECT newid(),newid(),DATEADD(month,1,date_facture), ABS(CHECKSUM(NewId())) % 1000, RAND()*20,'bien '+information
FROM TBL_clients

-- 256K lignes
INSERT INTO TBL_clients(nom, prenom, date_facture,montant, departement,information)
SELECT newid(),newid(),DATEADD(month,1,date_facture), ABS(CHECKSUM(NewId())) % 1000, RAND()*20,'trop '+information
FROM TBL_clients

-- 512K lignes
INSERT INTO TBL_clients(nom, prenom, date_facture,montant, departement,information)
SELECT newid(),newid(),DATEADD(month,1,date_facture), ABS(CHECKSUM(NewId())) % 1000, RAND()*20,'ordinateur '+information
FROM TBL_clients

-- 1024K lignes
INSERT INTO TBL_clients(nom, prenom, date_facture,montant, departement,information)
SELECT newid(),newid(),DATEADD(month,1,date_facture), ABS(CHECKSUM(NewId())) % 1000, RAND()*20,'bonjour '+information
FROM TBL_clients

-- repartition aleatoire  des nom et prenom (pas de lignes identiques)
-- information : texte plus ou moins long contenant des mots
SELECT TOP 10 PERCENT * FROM TBL_clients

-- Repartition gaussienne
SELECT date_facture, COUNT(*) FROM TBL_clients
GROUP BY date_facture
ORDER BY date_facture

-- Répartition régulière sur 1000 valeurs
SELECT montant, COUNT(*) FROM TBL_clients
GROUP BY montant
ORDER BY montant

-- Répartition irrégulière sur 20 valeurs
SELECT departement, COUNT(*) FROM TBL_clients
GROUP BY departement
ORDER BY departement







