CREATE DATABASE T_SStop;

USE T_SStop;

CREATE TABLE EstilosMusicais
(
	IdEstilo INT PRIMARY KEY IDENTITY
	,Nome VARCHAR(200) NOT NULL
);
CREATE TABLE Artistas
(
	IdArtista INT PRIMARY KEY IDENTITY
	,Nome VARCHAR(200) NOT NULL 
	,IdEstilo INT FOREIGN KEY REFERENCES EstilosMusicais (IdEstilo)
);



INSERT INTO Artistas (IdEstilo, Nome) VALUES (1,'Pericles')
								    ,(2,'Leonardo')
									,(3,'Legiao Urbana')
									,(4,'Metalica');
ALTER TABLE Artistas ADD IdEstilo INT FOREIGN KEY REFERENCES EstilosMusicais(IdEstilo);
SELECT *
		FROM Artistas;

INSERT INTO EstilosMusicais(Nome) VALUES ('Samba')
								    ,('Sertanejo')
									,('MPB')
									,('Forró')
									,('Trap')
									,('K-Pop')
									,('Axé')
									,('Rock');

SELECT *
		FROM EstilosMusicais;

SELECT IdEstilo, Nome
		FROM EstilosMusicais;



SELECT * FROM EstilosMusicais
	WHERE IdEstilo = 1

SELECT * FROM EstilosMusicais WHERE Nome like ('Sertanejo%');
SELECT * FROM EstilosMusicais WHERE Nome like ('%S%');

SELECT Artistas.* , EstilosMusicais.*
		FROM Artistas right JOIN EstilosMusicais ON Artistas.IdEstilo = EstilosMusicais.IdEstilo
INSERT INTO Artistas (IdEstilo, Nome) VALUES (37,'Zeca')
SELECT Artistas.* , EstilosMusicais.*
		FROM Artistas Left JOIN EstilosMusicais ON Artistas.IdEstilo = EstilosMusicais.IdEstilo
SELECT Artistas.* , EstilosMusicais.*
		FROM Artistas FULL JOIN EstilosMusicais ON Artistas.IdEstilo = EstilosMusicais.IdEstilo
