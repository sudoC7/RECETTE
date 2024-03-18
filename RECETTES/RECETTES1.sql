CREATE TABLE INGREDIENTS( -- yes
   id_ingredients INTEGER PRIMARY KEY AUTOINCREMENT, --AUTO_INCREMENT
   NomIngredient TEXT NOT NULL,
   UniteMesure VARCHAR(50) DEFAULT NULL,
   Prix INT NOT NULL
);
CREATE TABLE CATEGORIE( -- yes
   id_categorie INTEGER PRIMARY KEY AUTOINCREMENT, --AUTO_INCREMENT
   NomCategorie VARCHAR(50) DEFAULT NULL
);
CREATE TABLE RECETTE ( -- yes 
   id_recette INTEGER PRIMARY KEY AUTOINCREMENT, --AUTO_INCREMENT
   Nom VARCHAR(50) NOT NULL,
   Instructions TEXT NOT NULL,
   TempPreparation INT NOT NULL,
   id_categorie INT,    
   FOREIGN KEY(id_categorie) REFERENCES CATEGORIE(id_categorie)
);
CREATE TABLE PREPARATION( -- yes 
   id_recette INTEGER,
   id_ingredients INTEGER,
   quantite INT NOT NULL,
   PRIMARY KEY(id_recette, id_ingredients),
   FOREIGN KEY(id_recette) REFERENCES RECETTE(id_recette),
   FOREIGN KEY(id_ingredients) REFERENCES INGREDIENTS(id_ingredients)
);

DROP TABLE PREPARATION;
DROP TABLE RECETTE;
DROP TABLE CATEGORIE;
DROP TABLE INGREDIENTS;


INSERT INTO CATEGORIE (NomCategorie) VALUES ("Plat"),("Plat"),("Plat"),("Plat"),("Entree"),("Plat"),("Dessert"),("Plat"),("Plat"),("Dessert");

INSERT INTO RECETTE (Nom, Instructions, TempPreparation) VALUES 
	("Boeuf Bourguignon", "Faites revenir des morceaux de boeuf dans une cocotte avec des oignons, des carottes et des champignons. Ajoutez du vin rouge et laissez mijoter pendant plusieurs heures jusqu'à ce que la viande soit tendre. Servez chaud avec des pommes de terre ou des pâtes.", 30),
	
	("Ratatouille Provençale", "Faites revenir des courgettes, des aubergines, des poivrons, des tomates et des oignons dans de l'huile d'olive avec des herbes de Provence. Laissez mijoter jusqu'à ce que les légumes soient tendres. Servez chaud en accompagnement ou en plat principal avec du riz.", 40),
	
	("Poulet à la moutarde", "Faites dorer des morceaux de poulet dans une poêle, puis ajoutez de la moutarde, de la crème fraîche et des herbes de votre choix. Laissez mijoter jusqu'à ce que le poulet soit cuit à point et que la sauce soit crémeuse. Servez chaud avec des légumes vapeur ou des pommes de terre.", 35),
	
	("Pâtes Carbonara", "Faites cuire des pâtes al dente, puis mélangez-les avec des lardons dorés, de la crème fraîche, des œufs battus et du parmesan râpé. Assaisonnez avec du poivre noir et servez chaud.", 20),
	
	("Soupe à l’oignon gratinée", "Faites revenir des oignons émincés dans du beurre jusqu'à ce qu'ils soient caramélisés. Ajoutez du bouillon de bœuf, du vin blanc et des herbes, puis laissez mijoter pendant environ 30 minutes. Versez la soupe dans des bols allant au four, garnissez de croûtons de pain et de fromage râpé, puis faites gratiner au four jusqu'à ce que le fromage soit doré.
 ", 50),
	
	("Moules Marinières", "Faites revenir des échalotes et de l'ail dans une grande casserole avec du beurre, puis ajoutez des moules fraîches et du vin blanc. Couvrez et laissez cuire jusqu'à ce que les moules s'ouvrent. Servez chaud avec des frites ou du pain frais pour tremper dans le jus.", 25),
	
	("Tarte Tatin", "Disposez des pommes coupées en quartiers dans un moule à tarte, saupoudrez de sucre et de beurre, puis recouvrez de pâte feuilletée. Enfournez jusqu'à ce que la pâte soit dorée et croustillante. Renversez la tarte sur un plat de service pour que les pommes caramélisées se retrouvent sur le dessus. Servez chaud avec de la crème fraîche ou de la glace à la vanille.", 45),
	
	("Crevettes à l'ail", "Faites sauter des crevettes décortiquées dans une poêle avec de l'huile d'olive, de l'ail émincé et du piment rouge écrasé. Ajoutez du persil frais haché et un filet de jus de citron. Servez chaud avec du riz ou du pain à l'ail.", 20),
	
	("Salade Niçoise", "Disposez des feuilles de laitue dans un grand saladier, puis garnissez avec des tomates coupées en quartiers, des haricots verts blanchis, des olives, des œufs durs tranchés, des pommes de terre cuites et des filets de thon frais ou en conserve. Assaisonnez avec une vinaigrette à base d'huile d'olive, de vinaigre de vin rouge, de moutarde et d'herbes fraîches.", 15),
	
	("Tiramisu", "Battez ensemble du mascarpone, des jaunes d'œufs, du sucre et de l'extrait de vanille jusqu'à obtenir une crème lisse. Trempez des biscuits à la cuillère dans du café fort et disposez-les au fond d'un plat. Recouvrez de la moitié de la crème au mascarpone, puis répétez les couches avec le reste des biscuits et de la crème. Saupoudrez de cacao en poudre et réfrigérez pendant au moins 4 heures avant de servir.", 30);

INSERT INTO PREPARATION (quantite) VALUES (100),(120),(110),(130),(150),(100),(170),(90),(115),(70);

INSERT INTO INGREDIENTS (NomIngredient, UniteMesure, Prix) VALUES 
	("- Morceaux de bœuf
   - Oignons
   - Carottes
   - Champignons
   - Vin rouge
   - Sel et poivre
   - Bouquet garni (thym, laurier)
 	", "gr", 19),
	
	("- Courgettes
   - Aubergines
   - Poivrons (rouges et verts)
   - Tomates
   - Oignons
   - Ail
   - Huile d'olive
   - Herbes de Provence
   - Sel et poivre", "gr", 17),
	
	("- Morceaux de poulet
   - Moutarde
   - Crème fraîche
   - Herbes (thym, romarin)
   - Sel et poivre
 	", "gr", 23),
	
	("- Spaghetti ou linguine
   - Lardons
   - Œufs
   - Crème fraîche
   - Parmesan râpé
   - Poivre noir", "gr", 12),
	
	("- Oignons
   - Beurre
   - Bouillon de bœuf
   - Vin blanc
   - Croûtons de pain
   - Fromage râpé", "gr", 33),
	
	("- Moules fraîches
   - Échalotes
   - Ail
   - Beurre
   - Vin blanc
   - Persil frais", "gr", 25),
	
	("- Pommes
   - Sucre
   - Beurre
   - Pâte feuilletée
   - Crème fraîche ou glace à la vanille (pour servir)
 	", "gr", 19),
	
	("- Crevettes
   - Ail
   - Huile d'olive
   - Persil frais
   - Piment rouge
   - Jus de citron", "gr", 13),
	
	("- Laitue
   - Tomates
   - Haricots verts
   - Oeufs
   - Pommes de terre
   - Thon
   - Olives
   - Anchois
   - Vinaigrette ", "gr", 10),
	
	("- Mascarpone
    - Oeufs
    - Sucre
    - Extrait de vanille
    - Biscuits à la cuillère
    - Café fort
    - Cacao en poudre", "gr", 11);


SELECT * 
FROM CATEGORIE;

SELECT * 
FROM RECETTE;

SELECT * 
FROM PREPARATION;

SELECT * 
FROM INGREDIENTS;


