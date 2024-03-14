-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Mar 14, 2024 at 03:41 PM
-- Server version: 5.7.39
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `RECETTES`
--

-- --------------------------------------------------------

--
-- Table structure for table `CATEGORIE`
--

CREATE TABLE `CATEGORIE` (
  `id_categorie` int(11) NOT NULL,
  `nomCategorie` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `INGREDIENTS`
--

CREATE TABLE `INGREDIENTS` (
  `id_ingredients` int(11) NOT NULL,
  `prix` int(11) NOT NULL,
  `uniteMesure` varchar(50) DEFAULT NULL,
  `NomIngredient` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `INGREDIENTS`
--

INSERT INTO `INGREDIENTS` (`id_ingredients`, `prix`, `uniteMesure`, `NomIngredient`) VALUES
(1, 20, 'gr', ' - Morceaux de bœuf\r\n   - Oignons\r\n   - Carottes\r\n   - Champignons\r\n   - Vin rouge\r\n   - Sel et poivre\r\n   - Bouquet garni (thym, laurier)'),
(2, 34, 'gr', ' - Courgettes\r\n   - Aubergines\r\n   - Poivrons (rouges et verts)\r\n   - Tomates\r\n   - Oignons\r\n   - Ail\r\n   - Huile d\'olive\r\n   - Herbes de Provence\r\n   - Sel et poivre '),
(3, 10, 'gr', ' - Morceaux de poulet\r\n   - Moutarde\r\n   - Crème fraîche\r\n   - Herbes (thym, romarin)\r\n   - Sel et poivre\r\n '),
(4, 9, 'gr', ' - Spaghetti ou linguine\r\n   - Lardons\r\n   - Œufs\r\n   - Crème fraîche\r\n   - Parmesan râpé\r\n   - Poivre noir'),
(5, 14, 'gr', ' - Oignons\r\n   - Beurre\r\n   - Bouillon de bœuf\r\n   - Vin blanc\r\n   - Croûtons de pain\r\n   - Fromage râpé '),
(6, 13, 'gr', ' - Moules fraîches\r\n   - Échalotes\r\n   - Ail\r\n   - Beurre\r\n   - Vin blanc\r\n   - Persil frais '),
(7, 11, 'gr', ' - Pommes\r\n   - Sucre\r\n   - Beurre\r\n   - Pâte feuilletée\r\n   - Crème fraîche ou glace à la vanille (pour servir) '),
(8, 7, 'gr', ' - Crevettes\r\n   - Ail\r\n   - Huile d\'olive\r\n   - Persil frais\r\n   - Piment rouge\r\n   - Jus de citron '),
(9, 8, 'gr', ' - Laitue\r\n   - Tomates\r\n   - Haricots verts\r\n   - Oeufs\r\n   - Pommes de terre\r\n   - Thon\r\n   - Olives\r\n   - Anchois (en option)\r\n   - Vinaigrette (huile d\'olive, vinaigre de vin rouge, moutarde) '),
(10, 17, 'gr', ' - Mascarpone\r\n    - Oeufs\r\n    - Sucre\r\n    - Extrait de vanille\r\n    - Biscuits à la cuillère\r\n    - Café fort\r\n    - Cacao en poudre ');

-- --------------------------------------------------------

--
-- Table structure for table `PREPARATION`
--

CREATE TABLE `PREPARATION` (
  `id_recette` int(11) NOT NULL,
  `id_ingredients` int(11) NOT NULL,
  `quantite` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `RECETTE`
--

CREATE TABLE `RECETTE` (
  `id_recette` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `instructions` text NOT NULL,
  `tempPreparation` int(11) NOT NULL,
  `id_categorie` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `RECETTE`
--

INSERT INTO `RECETTE` (`id_recette`, `nom`, `instructions`, `tempPreparation`, `id_categorie`) VALUES
(2, 'Boeuf Bourguignon', 'Faites revenir des morceaux de boeuf dans une cocotte avec des oignons, des carottes et des champignons. Ajoutez du vin rouge et laissez mijoter pendant plusieurs heures jusqu\'à ce que la viande soit tendre. Servez chaud avec des pommes de terre ou des pâtes.', 30, NULL),
(3, 'Ratatouille Provençale', 'Faites revenir des courgettes, des aubergines, des poivrons, des tomates et des oignons dans de l\'huile d\'olive avec des herbes de Provence. Laissez mijoter jusqu\'à ce que les légumes soient tendres. Servez chaud en accompagnement ou en plat principal avec du riz', 40, NULL),
(4, 'Poulet à la moutarde', 'Faites dorer des morceaux de poulet dans une poêle, puis ajoutez de la moutarde, de la crème fraîche et des herbes de votre choix. Laissez mijoter jusqu\'à ce que le poulet soit cuit à point et que la sauce soit crémeuse. Servez chaud avec des légumes vapeur ou des pommes de terre.', 35, NULL),
(5, 'Pâtes Carbonara', 'Faites cuire des pâtes al dente, puis mélangez-les avec des lardons dorés, de la crème fraîche, des œufs battus et du parmesan râpé. Assaisonnez avec du poivre noir et servez chaud.', 20, NULL),
(6, 'Soupe à l’oignon gratinée', 'Faites revenir des oignons émincés dans du beurre jusqu\'à ce qu\'ils soient caramélisés. Ajoutez du bouillon de bœuf, du vin blanc et des herbes, puis laissez mijoter pendant environ 30 minutes. Versez la soupe dans des bols allant au four, garnissez de croûtons de pain et de fromage râpé, puis faites gratiner au four jusqu\'à ce que le fromage soit doré.', 50, NULL),
(7, 'Moules Marinières', 'Faites revenir des échalotes et de l\'ail dans une grande casserole avec du beurre, puis ajoutez des moules fraîches et du vin blanc. Couvrez et laissez cuire jusqu\'à ce que les moules s\'ouvrent. Servez chaud avec des frites ou du pain frais pour tremper dans le jus.', 25, NULL),
(8, 'Tarte Tatin', 'Disposez des pommes coupées en quartiers dans un moule à tarte, saupoudrez de sucre et de beurre, puis recouvrez de pâte feuilletée. Enfournez jusqu\'à ce que la pâte soit dorée et croustillante. Renversez la tarte sur un plat de service pour que les pommes caramélisées se retrouvent sur le dessus. Servez chaud avec de la crème fraîche ou de la glace à la vanille.', 45, NULL),
(9, 'Crevettes à l\'ail', 'Faites sauter des crevettes décortiquées dans une poêle avec de l\'huile d\'olive, de l\'ail émincé et du piment rouge écrasé. Ajoutez du persil frais haché et un filet de jus de citron. Servez chaud avec du riz ou du pain à l\'ail.', 20, NULL),
(10, 'Salade Niçoise', 'Disposez des feuilles de laitue dans un grand saladier, puis garnissez avec des tomates coupées en quartiers, des haricots verts blanchis, des olives, des œufs durs tranchés, des pommes de terre cuites et des filets de thon frais ou en conserve. Assaisonnez avec une vinaigrette à base d\'huile d\'olive, de vinaigre de vin rouge, de moutarde et d\'herbes fraîches.', 15, NULL),
(11, 'Tiramisu', 'Battez ensemble du mascarpone, des jaunes d\'œufs, du sucre et de l\'extrait de vanille jusqu\'à obtenir une crème lisse. Trempez des biscuits à la cuillère dans du café fort et disposez-les au fond d\'un plat. Recouvrez de la moitié de la crème au mascarpone, puis répétez les couches avec le reste des biscuits et de la crème. Saupoudrez de cacao en poudre et réfrigérez pendant au moins 4 heures avant de servir.\r\n ', 30, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `CATEGORIE`
--
ALTER TABLE `CATEGORIE`
  ADD PRIMARY KEY (`id_categorie`);

--
-- Indexes for table `INGREDIENTS`
--
ALTER TABLE `INGREDIENTS`
  ADD PRIMARY KEY (`id_ingredients`);

--
-- Indexes for table `PREPARATION`
--
ALTER TABLE `PREPARATION`
  ADD PRIMARY KEY (`id_recette`,`id_ingredients`),
  ADD KEY `id_ingredients` (`id_ingredients`);

--
-- Indexes for table `RECETTE`
--
ALTER TABLE `RECETTE`
  ADD PRIMARY KEY (`id_recette`),
  ADD KEY `id_categorie` (`id_categorie`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `CATEGORIE`
--
ALTER TABLE `CATEGORIE`
  MODIFY `id_categorie` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `INGREDIENTS`
--
ALTER TABLE `INGREDIENTS`
  MODIFY `id_ingredients` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `RECETTE`
--
ALTER TABLE `RECETTE`
  MODIFY `id_recette` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `PREPARATION`
--
ALTER TABLE `PREPARATION`
  ADD CONSTRAINT `preparation_ibfk_1` FOREIGN KEY (`id_recette`) REFERENCES `RECETTE` (`id_recette`),
  ADD CONSTRAINT `preparation_ibfk_2` FOREIGN KEY (`id_ingredients`) REFERENCES `INGREDIENTS` (`id_ingredients`);

--
-- Constraints for table `RECETTE`
--
ALTER TABLE `RECETTE`
  ADD CONSTRAINT `recette_ibfk_1` FOREIGN KEY (`id_categorie`) REFERENCES `CATEGORIE` (`id_categorie`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
