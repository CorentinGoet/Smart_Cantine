-- Création de la base de données
CREATE [IF NOT EXISTS] bdd_smart_cantine;
SHOW CREATE DATABASE bdd_smart_cantine;

USE bdd_smart_cantine;

-- Création des tables

CREATE TABLE cantines (
    id_cantine INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(255) NOT NULL
);

INSERT INTO cantines (nom)
VALUES ("ensta");

CREATE TABLE capteurs (
    id_capteur INT AUTO_INCREMENT PRIMARY KEY,
    type_capteur VARCHAR(255) NOT NULL,
    id_cantine INT,
    CONSTRAINT fk_cantine
    FOREIGN KEY (id_cantine)
        REFERENCES cantines (id_cantine)
        ON UPDATE RESTRICT
);

INSERT INTO capteurs (type_capteur, id_cantine)
VALUES ("Arduino", 1), ("Raspberry", 1);

CREATE TABLE mesures (
    id_mesure INT AUTO_INCREMENT PRIMARY KEY,
    id_capteur INT,
    date_mesure DATETIME,
    niveau_sonore FLOAT,
    CONSTRAINT fk_capteur
    FOREIGN KEY (id_capteur)
        REFERENCES capteurs (id_capteur)
        ON UPDATE RESTRICT
);

-- Creation des valeurs de tests

INSERT INTO mesures (id_capteur, date_mesure, niveau_sonore)
VALUES (1, CURRENT_TIMESTAMP, 15), (1, CURRENT_TIMESTAMP, 19), (2, CURRENT_TIMESTAMP, 32), (2, CURRENT_TIMESTAMP, 45);

-- Test de visualisation
SELECT * FROM mesures;
SELECT niveau_sonore, date_mesure, type_capteur 
FROM mesures as m JOIN capteurs as c ON m.id_capteur = c.id_capteur;