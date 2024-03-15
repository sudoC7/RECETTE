CREATE TABLE INGREDIENTS( -- yes
   id_ingredients INT AUTO_INCREMENT,
   NomIngredient TEXT NOT NULL,
   UniteMesure VARCHAR(50) DEFAULT NULL,
   Prix INT NOT NULL,
   PRIMARY KEY(id_ingredients)
);
CREATE TABLE CATEGORIE( -- yes
   id_categorie INT AUTO_INCREMENT,
   NomCategorie VARCHAR(50) DEFAULT NULL,
   PRIMARY KEY(id_categorie)
);
CREATE TABLE RECETTE( -- yes 
   id_recette INT AUTO_INCREMENT,
   Nom VARCHAR(50) NOT NULL,
   Instructions TEXT NOT NULL,
   TempPreparation INT NOT NULL,
   id_categorie INT DEFAULT NULL,    
   PRIMARY KEY(id_recette),
   FOREIGN KEY(id_categorie) REFERENCES CATEGORIE(id_categorie)
);
CREATE TABLE PREPARATION( -- yes 
   id_recette INT,
   id_ingredients INT,
   quantite INT NOT NULL,
   PRIMARY KEY(id_recette, id_ingredients),
   FOREIGN KEY(id_recette) REFERENCES RECETTE(id_recette),
   FOREIGN KEY(id_ingredients) REFERENCES INGREDIENTS(id_ingredients)
);


SELECT * 
FROM CATEGORIE;

SELECT * 
FROM RECETTE;

SELECT * 
FROM PREPARATION;

SELECT * 
FROM INGREDIENTS;

-- suprimmer la table exemple
DROP TABLE --table;




