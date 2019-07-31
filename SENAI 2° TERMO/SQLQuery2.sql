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
									,('Rock');

SELECT IdEstilo, Nome
		FROM EstilosMusicais;



select * FROM EstilosMusicais

