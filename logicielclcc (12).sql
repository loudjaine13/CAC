-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : jeu. 01 juin 2023 à 22:50
-- Version du serveur : 8.0.31
-- Version de PHP : 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `logicielclcc`
--

-- --------------------------------------------------------

--
-- Structure de la table `1_reference_des_patient`
--

DROP TABLE IF EXISTS `1_reference_des_patient`;
CREATE TABLE IF NOT EXISTS `1_reference_des_patient` (
  `id_reference_des_patient` int NOT NULL AUTO_INCREMENT,
  `Ndossier` int NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `medecin_traitant` int NOT NULL,
  `date_de_naissance` date NOT NULL,
  `age` int NOT NULL,
  `adress` varchar(255) NOT NULL,
  `habitat` varchar(255) NOT NULL,
  `N_telephone` int NOT NULL,
  `etat_marital` varchar(255) NOT NULL,
  `profession` varchar(255) NOT NULL,
  `niveau_socio_econo` varchar(255) NOT NULL,
  `niveau_scolaire` varchar(255) NOT NULL,
  `id_section` int NOT NULL,
  PRIMARY KEY (`id_reference_des_patient`),
  UNIQUE KEY `Ndossier` (`Ndossier`),
  KEY `medecin_traitant` (`medecin_traitant`),
  KEY `id_section` (`id_section`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `1_reference_des_patient`
--

INSERT INTO `1_reference_des_patient` (`id_reference_des_patient`, `Ndossier`, `nom`, `prenom`, `medecin_traitant`, `date_de_naissance`, `age`, `adress`, `habitat`, `N_telephone`, `etat_marital`, `profession`, `niveau_socio_econo`, `niveau_scolaire`, `id_section`) VALUES
(2, 1, 'test1', 'test1', 1, '2023-04-04', 2, 'annaba', 'annaba', 25487946, 'test', 'test', 'test', 'test', 1),
(3, 2, 'test2', 'test2', 1, '2023-05-05', 2, 'annaba', 'test', 531579632, 'Celibataire', 'test', 'test', 'Secondaire', 1),
(4, 3, 'test3', 'test3', 4, '2023-05-11', 20, 'annaba', 'test', 2368741, 'marie', 'test', 'test', 'Secondaire', 1),
(5, 4, 'test4', 'test4', 1, '2023-05-02', 33, 'annaba', 'test', 2569874, 'marie', 'test', 'test', 'Professionnel', 1);

-- --------------------------------------------------------

--
-- Structure de la table `2_donnees_anammestique_antcds_personelles`
--

DROP TABLE IF EXISTS `2_donnees_anammestique_antcds_personelles`;
CREATE TABLE IF NOT EXISTS `2_donnees_anammestique_antcds_personelles` (
  `id_antcds` int NOT NULL AUTO_INCREMENT,
  `Ndossier` int NOT NULL,
  `hta` tinyint(1) NOT NULL,
  `type_hta` varchar(255) NOT NULL,
  `diabete` tinyint(1) NOT NULL,
  `type_diabete` varchar(255) NOT NULL,
  `cardiopathie` tinyint(1) NOT NULL,
  `type_cardiopathie` varchar(255) NOT NULL,
  `dyslipidemie` tinyint(1) NOT NULL,
  `type_dyslipidemie` varchar(255) NOT NULL,
  `autre_bol_medico` tinyint(1) NOT NULL,
  `autre_medico` varchar(255) NOT NULL,
  `geste` tinyint(1) NOT NULL,
  `nbr_geste` int NOT NULL,
  `parite` tinyint(1) NOT NULL,
  `nbr_parite` varchar(255) NOT NULL,
  `cesarienne` tinyint(1) NOT NULL,
  `nbr_cesarienne` varchar(255) NOT NULL,
  `menarche` tinyint(1) NOT NULL,
  `age_menarche` int NOT NULL,
  `etat_cycle` varchar(255) NOT NULL,
  `menopose` tinyint(1) NOT NULL,
  `age_menopose` varchar(255) NOT NULL,
  `contracdeption` tinyint(1) NOT NULL,
  `type_contracdeption` varchar(255) NOT NULL,
  `dure_contracdeption` varchar(255) NOT NULL,
  `autre_contracdeption` varchar(255) NOT NULL,
  `trt_hormonal` tinyint(1) NOT NULL,
  `detail_trt_hormonal` varchar(255) NOT NULL,
  `avrt` tinyint(1) NOT NULL,
  `deatil_avrt` varchar(255) NOT NULL,
  `autre_bol_hormono` tinyint(1) NOT NULL,
  `autre_hormo` varchar(255) NOT NULL,
  `cancer_familiaux` tinyint(1) NOT NULL,
  `type_cancer_familiaux` varchar(255) NOT NULL,
  `parent_1deg` tinyint(1) NOT NULL,
  `nbr_parent_1deg` int NOT NULL,
  `parent_2deg` tinyint(1) NOT NULL,
  `nbr_parent_2deg` int NOT NULL,
  `parent_3deg` tinyint(1) NOT NULL,
  `nbr_parent_3deg` int NOT NULL,
  `age_diag_1deg` int NOT NULL,
  `age_diag_1deg_av40` int NOT NULL,
  `cancer_sin_billant_fam` tinyint(1) NOT NULL,
  `detail_cancer_sin_billant_fam` varchar(255) NOT NULL,
  `autre_bol_cancer_famili` tinyint(1) NOT NULL,
  `autre_cancer_famili` varchar(255) NOT NULL,
  PRIMARY KEY (`id_antcds`),
  KEY `Ndossier` (`Ndossier`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `2_donnees_anammestique_antcds_personelles`
--

INSERT INTO `2_donnees_anammestique_antcds_personelles` (`id_antcds`, `Ndossier`, `hta`, `type_hta`, `diabete`, `type_diabete`, `cardiopathie`, `type_cardiopathie`, `dyslipidemie`, `type_dyslipidemie`, `autre_bol_medico`, `autre_medico`, `geste`, `nbr_geste`, `parite`, `nbr_parite`, `cesarienne`, `nbr_cesarienne`, `menarche`, `age_menarche`, `etat_cycle`, `menopose`, `age_menopose`, `contracdeption`, `type_contracdeption`, `dure_contracdeption`, `autre_contracdeption`, `trt_hormonal`, `detail_trt_hormonal`, `avrt`, `deatil_avrt`, `autre_bol_hormono`, `autre_hormo`, `cancer_familiaux`, `type_cancer_familiaux`, `parent_1deg`, `nbr_parent_1deg`, `parent_2deg`, `nbr_parent_2deg`, `parent_3deg`, `nbr_parent_3deg`, `age_diag_1deg`, `age_diag_1deg_av40`, `cancer_sin_billant_fam`, `detail_cancer_sin_billant_fam`, `autre_bol_cancer_famili`, `autre_cancer_famili`) VALUES
(1, 2, 1, 'hta', 1, 'Diabete', 1, 'Cardiopathie', 1, 'Dyslipidemie', 1, 'med', 1, 2, 1, '2', 1, '2', 1, 2, 'etat du cycle', 1, '2', 1, 'Contraception', '2', 'autr Contraception', 1, 'Hormonal', 1, 'AVRT', 1, 'hormo', 1, 'faml', 1, 3, 1, 3, 1, 3, 3, 40, 1, 'Cancer du sein bilat dans la famille', 1, 'Melanome');

-- --------------------------------------------------------

--
-- Structure de la table `3_etude_genetique`
--

DROP TABLE IF EXISTS `3_etude_genetique`;
CREATE TABLE IF NOT EXISTS `3_etude_genetique` (
  `id_etude_genetique` int NOT NULL AUTO_INCREMENT,
  `Ndossier` int NOT NULL,
  `indication_onco_genetique` tinyint(1) NOT NULL,
  `detail_indication_onco` varchar(255) NOT NULL,
  `mutation_gene_BRCA1` tinyint(1) NOT NULL,
  `variation_BRCA1` varchar(255) NOT NULL,
  `mutation_gene_BRCA2` tinyint(1) NOT NULL,
  `variation_BRCA2` varchar(255) NOT NULL,
  `autre` tinyint(1) NOT NULL,
  `detail_autre` varchar(255) NOT NULL,
  PRIMARY KEY (`id_etude_genetique`),
  KEY `Ndossier` (`Ndossier`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `3_etude_genetique`
--

INSERT INTO `3_etude_genetique` (`id_etude_genetique`, `Ndossier`, `indication_onco_genetique`, `detail_indication_onco`, `mutation_gene_BRCA1`, `variation_BRCA1`, `mutation_gene_BRCA2`, `variation_BRCA2`, `autre`, `detail_autre`) VALUES
(1, 2, 1, 'test', 1, 'test', 1, 'test', 1, 'test');

-- --------------------------------------------------------

--
-- Structure de la table `4_donnees_clinique`
--

DROP TABLE IF EXISTS `4_donnees_clinique`;
CREATE TABLE IF NOT EXISTS `4_donnees_clinique` (
  `id_donne_clinique` int NOT NULL AUTO_INCREMENT,
  `Ndossier` int NOT NULL,
  `date_1er_symptome` date NOT NULL,
  `symptome` varchar(255) NOT NULL,
  `sein_droit` tinyint(1) NOT NULL,
  `detail_sein_droit` varchar(255) NOT NULL,
  `sein_gauche` tinyint(1) NOT NULL,
  `detail_sein_gauche` varchar(255) NOT NULL,
  `caracteristique` tinyint(1) NOT NULL,
  `detail_caracteristique` varchar(255) NOT NULL,
  `ecoulement` tinyint(1) NOT NULL,
  `detail_ecoulement` varchar(255) NOT NULL,
  `adenopathie` tinyint(1) NOT NULL,
  `detail_adenopathie` varchar(255) NOT NULL,
  `statut_performance` tinyint(1) NOT NULL,
  `detail_performance` int NOT NULL,
  `poid` double NOT NULL,
  `taille` double NOT NULL,
  `IMC` varchar(255) NOT NULL,
  `surface_corporelle` double NOT NULL,
  `autre_bol` tinyint(1) NOT NULL,
  `autre` varchar(255) NOT NULL,
  PRIMARY KEY (`id_donne_clinique`),
  KEY `Ndossier` (`Ndossier`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `4_donnees_clinique`
--

INSERT INTO `4_donnees_clinique` (`id_donne_clinique`, `Ndossier`, `date_1er_symptome`, `symptome`, `sein_droit`, `detail_sein_droit`, `sein_gauche`, `detail_sein_gauche`, `caracteristique`, `detail_caracteristique`, `ecoulement`, `detail_ecoulement`, `adenopathie`, `detail_adenopathie`, `statut_performance`, `detail_performance`, `poid`, `taille`, `IMC`, `surface_corporelle`, `autre_bol`, `autre`) VALUES
(1, 2, '2023-05-02', 'Inflammation cutanee', 1, 'QSI', 1, 'QSE', 1, 'carac', 1, 'eco', 1, 'Sus-claviculaire', 1, 1, 1, 2, '3', 4, 1, 'test');

-- --------------------------------------------------------

--
-- Structure de la table `5_circonstances_de_decouverte`
--

DROP TABLE IF EXISTS `5_circonstances_de_decouverte`;
CREATE TABLE IF NOT EXISTS `5_circonstances_de_decouverte` (
  `id_circonstance` int NOT NULL AUTO_INCREMENT,
  `Ndossier` int NOT NULL,
  `symptome` varchar(255) NOT NULL,
  `metastase` tinyint(1) NOT NULL,
  `detail_metastase` varchar(255) NOT NULL,
  `autre_bol` tinyint(1) NOT NULL,
  `autre` varchar(255) NOT NULL,
  PRIMARY KEY (`id_circonstance`),
  KEY `Ndossier` (`Ndossier`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `5_circonstances_de_decouverte`
--

INSERT INTO `5_circonstances_de_decouverte` (`id_circonstance`, `Ndossier`, `symptome`, `metastase`, `detail_metastase`, `autre_bol`, `autre`) VALUES
(3, 2, 'Ulceration cutanee', 1, '1', 1, '1');

-- --------------------------------------------------------

--
-- Structure de la table `6_la_mammographie`
--

DROP TABLE IF EXISTS `6_la_mammographie`;
CREATE TABLE IF NOT EXISTS `6_la_mammographie` (
  `id_mammographie` int NOT NULL AUTO_INCREMENT,
  `Ndossier` int NOT NULL,
  `date` date NOT NULL,
  `resultat` varchar(255) NOT NULL,
  `ADP` tinyint(1) NOT NULL,
  `detail_ADP` varchar(255) NOT NULL,
  `ACR` varchar(255) NOT NULL,
  `autre` tinyint(1) NOT NULL,
  `detail` varchar(255) NOT NULL,
  PRIMARY KEY (`id_mammographie`),
  KEY `Ndossier` (`Ndossier`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `6_la_mammographie`
--

INSERT INTO `6_la_mammographie` (`id_mammographie`, `Ndossier`, `date`, `resultat`, `ADP`, `detail_ADP`, `ACR`, `autre`, `detail`) VALUES
(1, 2, '2023-05-02', 'test', 1, 'test', '2', 1, 'test');

-- --------------------------------------------------------

--
-- Structure de la table `7_irm_mammaire`
--

DROP TABLE IF EXISTS `7_irm_mammaire`;
CREATE TABLE IF NOT EXISTS `7_irm_mammaire` (
  `id_irm` int NOT NULL AUTO_INCREMENT,
  `Ndossier` int NOT NULL,
  `date_irm` date NOT NULL,
  `resultat` varchar(255) NOT NULL,
  PRIMARY KEY (`id_irm`),
  KEY `Ndossier` (`Ndossier`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `7_irm_mammaire`
--

INSERT INTO `7_irm_mammaire` (`id_irm`, `Ndossier`, `date_irm`, `resultat`) VALUES
(1, 2, '2023-05-18', 'test'),
(2, 4, '2023-05-26', 'res');

-- --------------------------------------------------------

--
-- Structure de la table `8_donnees_anatomopathologique_biopsie`
--

DROP TABLE IF EXISTS `8_donnees_anatomopathologique_biopsie`;
CREATE TABLE IF NOT EXISTS `8_donnees_anatomopathologique_biopsie` (
  `id_anato_biopsy` int NOT NULL AUTO_INCREMENT,
  `Ndossier` int NOT NULL,
  `date_biopsy` date NOT NULL,
  `ref_biopsy` varchar(255) NOT NULL,
  `type_histologique` varchar(255) NOT NULL,
  `grade_biopsy` int NOT NULL,
  `necrose_tumoral_biopsy` tinyint(1) NOT NULL,
  `detail_necrose_biopsy` varchar(255) NOT NULL,
  `embole_vasculaire_biopsy` tinyint(1) NOT NULL,
  `detail_vasculaire_biopsy` varchar(255) NOT NULL,
  `stroma_biopsy` varchar(255) NOT NULL,
  `IHC_biopsy` tinyint(1) NOT NULL,
  `RE%_biopsy` double NOT NULL,
  `RE_scor_biopsy` double NOT NULL,
  `RP%_biobsy` double NOT NULL,
  `RP_scor_biosy` double NOT NULL,
  `HER2_scor_biopsy` double NOT NULL,
  `KI67%_biopsy` double NOT NULL,
  `phynotype_biopsy` tinyint(1) NOT NULL,
  `detail_phynotype_biopsy` varchar(255) NOT NULL,
  `date_chirurgie` date NOT NULL,
  `ref_chirurgie` varchar(255) NOT NULL,
  `type_hystologique_chrg` varchar(255) NOT NULL,
  `grade_chrg` int NOT NULL,
  `necrose_tumoral_chrg` tinyint(1) NOT NULL,
  `detail_tumoral_chrg` varchar(255) NOT NULL,
  `embol_vasculair_chrg` tinyint(1) NOT NULL,
  `detail_vasculair_chrg` varchar(255) NOT NULL,
  `stroma_chrg` varchar(255) NOT NULL,
  `IHC_chrg` tinyint(1) NOT NULL,
  `RE%_chrg` double NOT NULL,
  `RE_scor_chrg` double NOT NULL,
  `RP%_chrg` double NOT NULL,
  `RP_scor_chrg` double NOT NULL,
  `HER2_scor_chrg` int NOT NULL,
  `KI67%_chrg` double NOT NULL,
  `phynotype_chrg` tinyint(1) NOT NULL,
  `detail_phynotype_chrg` varchar(255) NOT NULL,
  PRIMARY KEY (`id_anato_biopsy`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `8_donnees_anatomopathologique_biopsie`
--

INSERT INTO `8_donnees_anatomopathologique_biopsie` (`id_anato_biopsy`, `Ndossier`, `date_biopsy`, `ref_biopsy`, `type_histologique`, `grade_biopsy`, `necrose_tumoral_biopsy`, `detail_necrose_biopsy`, `embole_vasculaire_biopsy`, `detail_vasculaire_biopsy`, `stroma_biopsy`, `IHC_biopsy`, `RE%_biopsy`, `RE_scor_biopsy`, `RP%_biobsy`, `RP_scor_biosy`, `HER2_scor_biopsy`, `KI67%_biopsy`, `phynotype_biopsy`, `detail_phynotype_biopsy`, `date_chirurgie`, `ref_chirurgie`, `type_hystologique_chrg`, `grade_chrg`, `necrose_tumoral_chrg`, `detail_tumoral_chrg`, `embol_vasculair_chrg`, `detail_vasculair_chrg`, `stroma_chrg`, `IHC_chrg`, `RE%_chrg`, `RE_scor_chrg`, `RP%_chrg`, `RP_scor_chrg`, `HER2_scor_chrg`, `KI67%_chrg`, `phynotype_chrg`, `detail_phynotype_chrg`) VALUES
(1, 2, '2023-05-01', '1', 'typ histo bio', 1, 1, 'bio', 1, 'vasc', 'chirg bio', 1, 1, 1, 1, 1, 1, 1, 1, 'Luminal A', '2023-05-02', '2', 'typ histo bio', 2, 1, 'chirg', 1, 'chirg', 'stroma chirg', 1, 2, 2, 2, 2, 2, 2, 1, 'Luminal B');

-- --------------------------------------------------------

--
-- Structure de la table `9_bilan_extension`
--

DROP TABLE IF EXISTS `9_bilan_extension`;
CREATE TABLE IF NOT EXISTS `9_bilan_extension` (
  `id_bilan` int NOT NULL AUTO_INCREMENT,
  `Ndossier` int NOT NULL,
  `radio` tinyint(1) NOT NULL,
  `resultat` varchar(255) NOT NULL,
  `telethorax` tinyint(1) NOT NULL,
  `TAP` tinyint(1) NOT NULL,
  `echo_AP` tinyint(1) NOT NULL,
  `scinti_OS` tinyint(1) NOT NULL,
  `TDM_cerebral` tinyint(1) NOT NULL,
  `autre_bol` tinyint(1) NOT NULL,
  `detail` varchar(255) NOT NULL,
  PRIMARY KEY (`id_bilan`),
  KEY `Ndossier` (`Ndossier`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `9_bilan_extension`
--

INSERT INTO `9_bilan_extension` (`id_bilan`, `Ndossier`, `radio`, `resultat`, `telethorax`, `TAP`, `echo_AP`, `scinti_OS`, `TDM_cerebral`, `autre_bol`, `detail`) VALUES
(1, 2, 1, 'test', 1, 1, 1, 1, 1, 1, 'test');

-- --------------------------------------------------------

--
-- Structure de la table `10_classifications`
--

DROP TABLE IF EXISTS `10_classifications`;
CREATE TABLE IF NOT EXISTS `10_classifications` (
  `id_classifications` int NOT NULL AUTO_INCREMENT,
  `Ndossier` int NOT NULL,
  `TNM` varchar(255) NOT NULL,
  `PEV` varchar(255) NOT NULL,
  `stade` varchar(255) NOT NULL,
  `autre_bol_cliniq` tinyint(1) NOT NULL,
  `detail_cliniq` varchar(255) NOT NULL,
  `PTNM` varchar(255) NOT NULL,
  `YPTNM` varchar(255) NOT NULL,
  `reponse_therap` varchar(255) NOT NULL,
  `autre_bol_histo` tinyint(1) NOT NULL,
  `detail_detail` varchar(255) NOT NULL,
  PRIMARY KEY (`id_classifications`),
  KEY `fk_10_1` (`Ndossier`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `10_classifications`
--

INSERT INTO `10_classifications` (`id_classifications`, `Ndossier`, `TNM`, `PEV`, `stade`, `autre_bol_cliniq`, `detail_cliniq`, `PTNM`, `YPTNM`, `reponse_therap`, `autre_bol_histo`, `detail_detail`) VALUES
(1, 2, 'test1', 'test', 'test', 1, 'test', 'test', 'test', 'test', 1, 'testh'),
(2, 3, 'test2', 'test2', 'test2', 1, 'test2 cliniq', 'ptnm', 'yptnm', 'repo', 1, 'test hist');

-- --------------------------------------------------------

--
-- Structure de la table `11_bilan_biologique`
--

DROP TABLE IF EXISTS `11_bilan_biologique`;
CREATE TABLE IF NOT EXISTS `11_bilan_biologique` (
  `id_biologiq` int NOT NULL AUTO_INCREMENT,
  `Ndossier` int NOT NULL,
  `groupage` varchar(255) NOT NULL,
  `serologie` varchar(255) NOT NULL,
  `hematologique` varchar(255) NOT NULL,
  `bilan_renal` varchar(255) NOT NULL,
  `bilan_hepatique` varchar(255) NOT NULL,
  `ca15.3` varchar(255) NOT NULL,
  `vitamine_D` varchar(255) NOT NULL,
  `autre_bol` tinyint(1) NOT NULL,
  `detail` varchar(255) NOT NULL,
  PRIMARY KEY (`id_biologiq`),
  KEY `fk_11_1` (`Ndossier`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `11_bilan_biologique`
--

INSERT INTO `11_bilan_biologique` (`id_biologiq`, `Ndossier`, `groupage`, `serologie`, `hematologique`, `bilan_renal`, `bilan_hepatique`, `ca15.3`, `vitamine_D`, `autre_bol`, `detail`) VALUES
(1, 2, 'A+', 'test2', 'test2', 'test2', 'test2', '25', 'test2', 1, 'test2');

-- --------------------------------------------------------

--
-- Structure de la table `12_traitements`
--

DROP TABLE IF EXISTS `12_traitements`;
CREATE TABLE IF NOT EXISTS `12_traitements` (
  `id_traitements` int NOT NULL AUTO_INCREMENT,
  `Ndossier` int NOT NULL,
  `symptomatique` tinyint(1) NOT NULL,
  `detail_sympt` varchar(255) NOT NULL,
  `chirurgicale` tinyint(1) NOT NULL,
  `date_chrg` varchar(255) NOT NULL,
  `type_de_chirurg` varchar(255) NOT NULL,
  `autre_chrg` varchar(255) NOT NULL,
  `autre_bol` tinyint(1) NOT NULL,
  `detail_chrg` varchar(255) NOT NULL,
  PRIMARY KEY (`id_traitements`),
  KEY `fk_12_1` (`Ndossier`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `12_traitements`
--

INSERT INTO `12_traitements` (`id_traitements`, `Ndossier`, `symptomatique`, `detail_sympt`, `chirurgicale`, `date_chrg`, `type_de_chirurg`, `autre_chrg`, `autre_bol`, `detail_chrg`) VALUES
(1, 2, 1, 'test2', 1, '2023-05-02', 'test2', 'test2', 1, 'test'),
(2, 2, 1, 'test2', 1, '2023-05-04', 'test2', 'test2', 1, 'test2');

-- --------------------------------------------------------

--
-- Structure de la table `13_donnees_anatomopathologique_de_chirurgie`
--

DROP TABLE IF EXISTS `13_donnees_anatomopathologique_de_chirurgie`;
CREATE TABLE IF NOT EXISTS `13_donnees_anatomopathologique_de_chirurgie` (
  `id_anato_chirurgie` int NOT NULL AUTO_INCREMENT,
  `Ndossier` int NOT NULL,
  `taille_de_tumeur` double NOT NULL,
  `ADP_Nplus` varchar(255) NOT NULL,
  `limites` varchar(255) NOT NULL,
  `PRC` tinyint(1) NOT NULL,
  `detail_PRC` varchar(255) NOT NULL,
  `autre_bol` tinyint(1) NOT NULL,
  `detail_autre` varchar(255) NOT NULL,
  PRIMARY KEY (`id_anato_chirurgie`),
  KEY `Ndossier` (`Ndossier`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `13_donnees_anatomopathologique_de_chirurgie`
--

INSERT INTO `13_donnees_anatomopathologique_de_chirurgie` (`id_anato_chirurgie`, `Ndossier`, `taille_de_tumeur`, `ADP_Nplus`, `limites`, `PRC`, `detail_PRC`, `autre_bol`, `detail_autre`) VALUES
(1, 2, 0, 'test2', 'Non-infiltrees', 1, 'test2', 1, 'test2'),
(2, 2, 0, '2', 'Non-infiltrées', 1, 'test2', 1, 'test2');

-- --------------------------------------------------------

--
-- Structure de la table `14_maladie_non_metastatique`
--

DROP TABLE IF EXISTS `14_maladie_non_metastatique`;
CREATE TABLE IF NOT EXISTS `14_maladie_non_metastatique` (
  `id_non_metast` int NOT NULL,
  `Ndossier` int NOT NULL,
  `protocole_CNA` varchar(255) NOT NULL,
  `date_C1_NA` date NOT NULL,
  `intercure_C1_NA` varchar(255) NOT NULL,
  `date_C2_NA` date NOT NULL,
  `intercure_C2_NA` varchar(255) NOT NULL,
  `date_C3_NA` date NOT NULL,
  `intercure_C3_NA` varchar(255) NOT NULL,
  `date_C4_NA` date NOT NULL,
  `intercure_C4_NA` varchar(255) NOT NULL,
  `date_C5_NA` date NOT NULL,
  `intercure_C5_NA` varchar(255) NOT NULL,
  `date_C6_NA` date NOT NULL,
  `intercure_C6_NA` varchar(255) NOT NULL,
  `date_C7_NA` date NOT NULL,
  `intercure_C7_NA` varchar(255) NOT NULL,
  `date_C8_NA` date NOT NULL,
  `intercure_C8_NA` varchar(255) NOT NULL,
  `evaluation_clinique` varchar(255) NOT NULL,
  `evaluation_RX` varchar(255) NOT NULL,
  `autre_CNA` tinyint(1) NOT NULL,
  `detail_CNA` varchar(255) NOT NULL,
  `protocol_CTA` varchar(255) NOT NULL,
  `date_C1_CA` date NOT NULL,
  `intercure_C1_CA` varchar(255) NOT NULL,
  `date_C2_CA` date NOT NULL,
  `intercure_C2_CA` varchar(255) NOT NULL,
  `date_C3_CA` date NOT NULL,
  `intercure_C3_cA` varchar(255) NOT NULL,
  `date_C4_CA` date NOT NULL,
  `intercure_C4_CA` varchar(255) NOT NULL,
  `date_C5_CA` date NOT NULL,
  `intercure_C5_CA` varchar(255) NOT NULL,
  `date_C6_CA` date NOT NULL,
  `intercure_C6_CA` varchar(255) NOT NULL,
  `date_C7_CA` date NOT NULL,
  `intercure_C7_CA` varchar(255) NOT NULL,
  `date_C8_CA` date NOT NULL,
  `intercure_C8_CA` varchar(255) NOT NULL,
  `reduction_dose_CTA` varchar(255) NOT NULL,
  `autre_bol_CTA` tinyint(1) NOT NULL,
  `detail_CTA` varchar(255) NOT NULL,
  `HT_adjuvante` varchar(255) NOT NULL,
  `date_debut` date NOT NULL,
  `date_arret` date NOT NULL,
  `resutat` varchar(255) NOT NULL,
  `autre_bol_HT` tinyint(1) NOT NULL,
  `detail_HT` varchar(255) NOT NULL,
  `protocol_therapie` varchar(255) NOT NULL,
  `date_therapie` date NOT NULL,
  `description` varchar(255) NOT NULL,
  `RT_local` tinyint(1) NOT NULL,
  `date_RT_local` date NOT NULL,
  `resultat_RT` varchar(255) NOT NULL,
  `dose_RT` varchar(255) NOT NULL,
  PRIMARY KEY (`id_non_metast`),
  KEY `Ndossier` (`Ndossier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `14_maladie_non_metastatique`
--

INSERT INTO `14_maladie_non_metastatique` (`id_non_metast`, `Ndossier`, `protocole_CNA`, `date_C1_NA`, `intercure_C1_NA`, `date_C2_NA`, `intercure_C2_NA`, `date_C3_NA`, `intercure_C3_NA`, `date_C4_NA`, `intercure_C4_NA`, `date_C5_NA`, `intercure_C5_NA`, `date_C6_NA`, `intercure_C6_NA`, `date_C7_NA`, `intercure_C7_NA`, `date_C8_NA`, `intercure_C8_NA`, `evaluation_clinique`, `evaluation_RX`, `autre_CNA`, `detail_CNA`, `protocol_CTA`, `date_C1_CA`, `intercure_C1_CA`, `date_C2_CA`, `intercure_C2_CA`, `date_C3_CA`, `intercure_C3_cA`, `date_C4_CA`, `intercure_C4_CA`, `date_C5_CA`, `intercure_C5_CA`, `date_C6_CA`, `intercure_C6_CA`, `date_C7_CA`, `intercure_C7_CA`, `date_C8_CA`, `intercure_C8_CA`, `reduction_dose_CTA`, `autre_bol_CTA`, `detail_CTA`, `HT_adjuvante`, `date_debut`, `date_arret`, `resutat`, `autre_bol_HT`, `detail_HT`, `protocol_therapie`, `date_therapie`, `description`, `RT_local`, `date_RT_local`, `resultat_RT`, `dose_RT`) VALUES
(0, 2, 'test', '2023-05-10', 'test', '2023-05-03', 'test', '2023-05-03', 'test', '2023-05-03', 'test', '2023-05-03', 'test', '2023-05-03', 'test', '2023-05-10', 'test', '2023-05-10', 'test', 'test', 'test', 1, 'test', 'testCTA', '2023-05-17', 'test', '2023-05-10', 'test', '2023-05-03', 'test', '2023-05-10', 'test', '2023-05-03', 'test', '2023-05-18', 'test', '2023-05-03', 'test', '2023-05-17', 'test', 'test', 1, 'test', 'test', '2023-05-17', '2023-05-24', 'test', 1, 'test', 'test', '2023-05-10', 'test', 1, '2023-05-16', 'test', 'test');

-- --------------------------------------------------------

--
-- Structure de la table `15_suivie_patient`
--

DROP TABLE IF EXISTS `15_suivie_patient`;
CREATE TABLE IF NOT EXISTS `15_suivie_patient` (
  `id_suivie` int NOT NULL AUTO_INCREMENT,
  `Ndossier` int NOT NULL,
  `date_dernier_control` date NOT NULL,
  `description` varchar(255) NOT NULL,
  `autre_bol` tinyint(1) NOT NULL,
  `detail` varchar(255) NOT NULL,
  PRIMARY KEY (`id_suivie`),
  KEY `Ndossier` (`Ndossier`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `15_suivie_patient`
--

INSERT INTO `15_suivie_patient` (`id_suivie`, `Ndossier`, `date_dernier_control`, `description`, `autre_bol`, `detail`) VALUES
(3, 2, '2023-05-08', 'suiv', 1, 'suiv'),
(4, 3, '2023-06-16', 'test', 1, 'test'),
(5, 3, '2023-06-17', 'test', 1, 'test'),
(6, 3, '2023-06-17', 'testtttt', 1, 'test'),
(7, 3, '2023-06-15', 'TEST', 1, 'TEST');

-- --------------------------------------------------------

--
-- Structure de la table `16_recidive_et_traitement`
--

DROP TABLE IF EXISTS `16_recidive_et_traitement`;
CREATE TABLE IF NOT EXISTS `16_recidive_et_traitement` (
  `id_recedive` int NOT NULL AUTO_INCREMENT,
  `Ndossier` int NOT NULL,
  `type_recidive` varchar(255) NOT NULL,
  `date_recidive` date NOT NULL,
  `resultat_type_recedive` varchar(255) NOT NULL,
  `chirurgie` tinyint(1) NOT NULL,
  `resultat_chrg` varchar(255) NOT NULL,
  `HTA_adj_local` varchar(255) NOT NULL,
  `chimiotherapie` tinyint(1) NOT NULL,
  `num_ligne` varchar(255) NOT NULL,
  `protocole_chmio` varchar(255) NOT NULL,
  `resultat_chimiotherapie` varchar(255) NOT NULL,
  `hormonotherapie` tinyint(1) NOT NULL,
  `num_ligne_hormono` varchar(255) NOT NULL,
  `protocol_hormono` varchar(255) NOT NULL,
  `resultat_hirmono` varchar(255) NOT NULL,
  `radiotherapie` tinyint(1) NOT NULL,
  `num_ligne_radio` varchar(255) NOT NULL,
  `protocol_radio` varchar(255) NOT NULL,
  `resultat_radio` varchar(255) NOT NULL,
  `therapie_sible` tinyint(1) NOT NULL,
  `num_ligne_therapie` varchar(255) NOT NULL,
  `protocol_therapie` varchar(255) NOT NULL,
  `resultat_sible` varchar(255) NOT NULL,
  `autre_bol` tinyint(1) NOT NULL,
  `resultat_autre` varchar(255) NOT NULL,
  PRIMARY KEY (`id_recedive`),
  KEY `Ndossier` (`Ndossier`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `16_recidive_et_traitement`
--

INSERT INTO `16_recidive_et_traitement` (`id_recedive`, `Ndossier`, `type_recidive`, `date_recidive`, `resultat_type_recedive`, `chirurgie`, `resultat_chrg`, `HTA_adj_local`, `chimiotherapie`, `num_ligne`, `protocole_chmio`, `resultat_chimiotherapie`, `hormonotherapie`, `num_ligne_hormono`, `protocol_hormono`, `resultat_hirmono`, `radiotherapie`, `num_ligne_radio`, `protocol_radio`, `resultat_radio`, `therapie_sible`, `num_ligne_therapie`, `protocol_therapie`, `resultat_sible`, `autre_bol`, `resultat_autre`) VALUES
(1, 2, 'test', '2023-05-03', 'test', 1, 'test', '', 1, 'test', 'test', 'test', 1, 'test', 'test', 'test', 1, 'test', 'test', 'test', 1, 'test', 'test', 'test', 1, 'test'),
(2, 2, 'Locale', '2023-05-01', 'reslt recidiv', 1, 'res chirgr', '', 1, '1', 'prooc chimiotherapie', 'res chimiotherapie', 1, '2', 'protocol hormo', 'res hormo', 1, '3', 'protocol radio', 'res radio', 1, '4', 'protocol ths', 'res ths', 1, 'detail');

-- --------------------------------------------------------

--
-- Structure de la table `17_rechute_mplus`
--

DROP TABLE IF EXISTS `17_rechute_mplus`;
CREATE TABLE IF NOT EXISTS `17_rechute_mplus` (
  `id_rechute` int NOT NULL AUTO_INCREMENT,
  `Ndossier` int NOT NULL,
  `Mplus` tinyint(1) NOT NULL,
  `date_Mplus` date NOT NULL,
  `local` tinyint(1) NOT NULL,
  `date_local` date NOT NULL,
  `controlateral` tinyint(1) NOT NULL,
  `date_controlateral` date NOT NULL,
  `Ca15.3` varchar(255) NOT NULL,
  `autre_bol` tinyint(1) NOT NULL,
  `detail` varchar(255) NOT NULL,
  PRIMARY KEY (`id_rechute`),
  KEY `Ndossier` (`Ndossier`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `17_rechute_mplus`
--

INSERT INTO `17_rechute_mplus` (`id_rechute`, `Ndossier`, `Mplus`, `date_Mplus`, `local`, `date_local`, `controlateral`, `date_controlateral`, `Ca15.3`, `autre_bol`, `detail`) VALUES
(1, 2, 1, '2023-05-10', 1, '2023-05-04', 1, '2023-05-10', 'test', 1, 'test'),
(3, 2, 1, '2023-05-08', 1, '2023-05-09', 1, '2023-05-10', 'test2', 1, 'test2');

-- --------------------------------------------------------

--
-- Structure de la table `18_ihc`
--

DROP TABLE IF EXISTS `18_ihc`;
CREATE TABLE IF NOT EXISTS `18_ihc` (
  `id_IHC` int NOT NULL AUTO_INCREMENT,
  `Ndossier` int NOT NULL,
  `date` date NOT NULL,
  `decription` varchar(255) NOT NULL,
  `autre_bol` tinyint(1) NOT NULL,
  `detail` varchar(255) NOT NULL,
  PRIMARY KEY (`id_IHC`),
  KEY `Ndossier` (`Ndossier`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `18_ihc`
--

INSERT INTO `18_ihc` (`id_IHC`, `Ndossier`, `date`, `decription`, `autre_bol`, `detail`) VALUES
(1, 2, '2023-05-10', 'test', 1, 'test'),
(3, 2, '2023-05-01', 'test2', 1, 'test2');

-- --------------------------------------------------------

--
-- Structure de la table `19_maladie_metastique`
--

DROP TABLE IF EXISTS `19_maladie_metastique`;
CREATE TABLE IF NOT EXISTS `19_maladie_metastique` (
  `id_matastique` int NOT NULL AUTO_INCREMENT,
  `Ndossier` int NOT NULL,
  `Nligne_chimio` varchar(255) NOT NULL,
  `date_chimio` date NOT NULL,
  `description_chimio` varchar(255) NOT NULL,
  `autre_bol_chimio` tinyint(1) NOT NULL,
  `detail_chimio` varchar(255) NOT NULL,
  `Nligne_therapie` varchar(255) NOT NULL,
  `date_therapie` date NOT NULL,
  `description_therapie` varchar(255) NOT NULL,
  `autre_bol_therpie` tinyint(1) NOT NULL,
  `detail_therapie` varchar(255) NOT NULL,
  `Nligne_hormono` varchar(255) NOT NULL,
  `date_hormono` date NOT NULL,
  `description_hormono` varchar(255) NOT NULL,
  `autre_bol_hormono` tinyint(1) NOT NULL,
  `detail_hormono` varchar(255) NOT NULL,
  `flash_RX` tinyint(1) NOT NULL,
  `date_RX` date NOT NULL,
  `dose_RX` varchar(255) NOT NULL,
  `autre_bol_RX` tinyint(1) NOT NULL,
  `detail_RX` varchar(255) NOT NULL,
  PRIMARY KEY (`id_matastique`),
  KEY `Ndossier` (`Ndossier`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `19_maladie_metastique`
--

INSERT INTO `19_maladie_metastique` (`id_matastique`, `Ndossier`, `Nligne_chimio`, `date_chimio`, `description_chimio`, `autre_bol_chimio`, `detail_chimio`, `Nligne_therapie`, `date_therapie`, `description_therapie`, `autre_bol_therpie`, `detail_therapie`, `Nligne_hormono`, `date_hormono`, `description_hormono`, `autre_bol_hormono`, `detail_hormono`, `flash_RX`, `date_RX`, `dose_RX`, `autre_bol_RX`, `detail_RX`) VALUES
(1, 2, 'test', '2023-05-17', 'test', 1, 'test', 'test', '2023-05-24', 'test', 1, 'test', 'test', '2023-05-23', 'test', 1, 'test', 1, '2023-05-23', 'test', 1, 'test'),
(2, 2, '21', '2023-05-01', 'test2 chi', 1, 'autre chi', '22', '2023-05-02', 'test2 th', 1, 'autre th', '23', '2023-05-03', 'test2 hormono', 1, 'autre hor', 0, '0000-00-00', '5', 1, 'autre rrx');

-- --------------------------------------------------------

--
-- Structure de la table `20_grossesse`
--

DROP TABLE IF EXISTS `20_grossesse`;
CREATE TABLE IF NOT EXISTS `20_grossesse` (
  `id_grossesse` int NOT NULL AUTO_INCREMENT,
  `Ndossier` int NOT NULL,
  `grossesse_cancer` tinyint(1) NOT NULL,
  `date_grossesse_cancer` date NOT NULL,
  `description_grossesse_cancer` varchar(255) NOT NULL,
  `grossesse_apr_TRT` tinyint(1) NOT NULL,
  `date_TRT` date NOT NULL,
  `description_TRT` varchar(255) NOT NULL,
  `autre_bol` tinyint(1) NOT NULL,
  `detail` varchar(255) NOT NULL,
  PRIMARY KEY (`id_grossesse`),
  KEY `Ndossier` (`Ndossier`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `20_grossesse`
--

INSERT INTO `20_grossesse` (`id_grossesse`, `Ndossier`, `grossesse_cancer`, `date_grossesse_cancer`, `description_grossesse_cancer`, `grossesse_apr_TRT`, `date_TRT`, `description_TRT`, `autre_bol`, `detail`) VALUES
(2, 2, 1, '2023-05-03', 'test', 1, '2023-05-03', 'test', 1, 'test'),
(3, 2, 1, '2023-05-05', 'test2', 1, '2023-05-18', 'test2', 1, 'test2');

-- --------------------------------------------------------

--
-- Structure de la table `21_devenir`
--

DROP TABLE IF EXISTS `21_devenir`;
CREATE TABLE IF NOT EXISTS `21_devenir` (
  `id_devenir` int NOT NULL AUTO_INCREMENT,
  `Ndossier` int NOT NULL,
  `devenir` varchar(255) NOT NULL,
  `au_cour_traitment` tinyint(1) NOT NULL,
  `vivant` tinyint(1) NOT NULL,
  `perdu_de_vu` tinyint(1) NOT NULL,
  `date_perdu_de_vu` date NOT NULL,
  `dece` tinyint(1) NOT NULL,
  `date_dece` date NOT NULL,
  `cause_dece` varchar(255) NOT NULL,
  `autre_bol` tinyint(1) NOT NULL,
  `detail` varchar(255) NOT NULL,
  PRIMARY KEY (`id_devenir`),
  KEY `Ndossier` (`Ndossier`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `21_devenir`
--

INSERT INTO `21_devenir` (`id_devenir`, `Ndossier`, `devenir`, `au_cour_traitment`, `vivant`, `perdu_de_vu`, `date_perdu_de_vu`, `dece`, `date_dece`, `cause_dece`, `autre_bol`, `detail`) VALUES
(1, 2, 'test', 1, 1, 1, '2023-05-17', 1, '2023-05-23', 'test', 1, 'h'),
(3, 2, 'test2', 1, 1, 1, '2023-05-01', 1, '2023-05-02', 'test2', 1, 'h');

-- --------------------------------------------------------

--
-- Structure de la table `22_formulaire`
--

DROP TABLE IF EXISTS `22_formulaire`;
CREATE TABLE IF NOT EXISTS `22_formulaire` (
  `id` int NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `prenom` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date_de_naissance` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `lieu` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `adresse` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `yhju` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ghy` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ty` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ytg` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `heh` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `24_form`
--

DROP TABLE IF EXISTS `24_form`;
CREATE TABLE IF NOT EXISTS `24_form` (
  `id` int NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `prenom` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `date_de_naissance` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `lieu` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `adresse` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `yhju` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ghy` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ty` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ytg` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `heh` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `medecin`
--

DROP TABLE IF EXISTS `medecin`;
CREATE TABLE IF NOT EXISTS `medecin` (
  `id_medecin` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `adress` varchar(255) NOT NULL,
  `affectation_unité` varchar(255) NOT NULL,
  `N_telephone` int NOT NULL,
  `email` varchar(255) NOT NULL,
  `id_utilisateur` int NOT NULL,
  PRIMARY KEY (`id_medecin`),
  KEY `fk_1user` (`id_utilisateur`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `medecin`
--

INSERT INTO `medecin` (`id_medecin`, `nom`, `prenom`, `adress`, `affectation_unité`, `N_telephone`, `email`, `id_utilisateur`) VALUES
(4, 'Boulouh ', 'Ibtissam', 'annaba', 'nouvelle', 245, 'boulouh@gmail.com', 2),
(5, 'traitant', 'traitant', 'annaba', 'nouvelle', 5678, 'test@gmail.com', 4);

-- --------------------------------------------------------

--
-- Structure de la table `note`
--

DROP TABLE IF EXISTS `note`;
CREATE TABLE IF NOT EXISTS `note` (
  `id_note` int NOT NULL AUTO_INCREMENT,
  `titre` varchar(255) NOT NULL,
  `content` varchar(500) NOT NULL,
  `date_creation` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id_medecin` int DEFAULT NULL,
  `id_secretaire` int DEFAULT NULL,
  PRIMARY KEY (`id_note`),
  KEY `id_medecin` (`id_medecin`,`id_secretaire`),
  KEY `fk_note_sec` (`id_secretaire`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `note`
--

INSERT INTO `note` (`id_note`, `titre`, `content`, `date_creation`, `id_medecin`, `id_secretaire`) VALUES
(1, 'note', 'test', '2023-05-20 13:20:34', 1, NULL),
(2, 'updated', 'this note belongs to medecin', '2023-05-20 13:47:11', 1, NULL),
(4, 'note4', 'test', '2023-05-20 13:35:08', 1, NULL),
(5, 'note5', 'test', '2023-05-20 13:44:10', 1, NULL),
(6, 'note', 'this note belongs to secretire', '2023-05-20 13:49:37', NULL, 1),
(7, 'test 3', 'test3', '2023-05-27 00:14:15', 1, NULL),
(8, 'he', 'secretaire ', '2023-05-31 06:29:28', NULL, 2),
(9, 'traitanttt', 'traitant', '2023-05-31 06:30:20', 5, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `protocole_a_recevoir`
--

DROP TABLE IF EXISTS `protocole_a_recevoir`;
CREATE TABLE IF NOT EXISTS `protocole_a_recevoir` (
  `id_protocole` int NOT NULL AUTO_INCREMENT,
  `Ndossier` int NOT NULL,
  `medecin_traitant` varchar(255) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `age` int NOT NULL,
  `Premedication` varchar(255) NOT NULL,
  `cytotoxique` varchar(255) NOT NULL,
  `posologie` varchar(255) NOT NULL,
  `dllution` varchar(255) NOT NULL,
  `duree` varchar(255) NOT NULL,
  `J1` varchar(255) NOT NULL,
  `J2` varchar(255) NOT NULL,
  `J3` varchar(255) NOT NULL,
  `remarque` varchar(255) NOT NULL,
  PRIMARY KEY (`id_protocole`),
  KEY `Ndossier` (`Ndossier`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `protocole_a_recevoir`
--

INSERT INTO `protocole_a_recevoir` (`id_protocole`, `Ndossier`, `medecin_traitant`, `nom`, `date`, `age`, `Premedication`, `cytotoxique`, `posologie`, `dllution`, `duree`, `J1`, `J2`, `J3`, `remarque`) VALUES
(1, 2, 'test', 'test', '2023-05-02', 18, '', 'test', 'test', 'test', '2', 'test', 'test', 'test', 'test'),
(5, 3, 'Boulouh ', 'test3 test3', '2023-06-07', 20, '120 mg Solumedrol, 08 mg Zophren, 40 mg Omeprazole, 1/2 amp Atropine, 1/2 amp Phénargan', '  gu  ', '    ik  ukj  ', ' vjku   ', '    ', '    ', '    ', '    ', 'test');

-- --------------------------------------------------------

--
-- Structure de la table `schedule_list`
--

DROP TABLE IF EXISTS `schedule_list`;
CREATE TABLE IF NOT EXISTS `schedule_list` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `start_datetime` datetime NOT NULL,
  `end_datetime` datetime NOT NULL,
  `id_medecin` int DEFAULT NULL,
  `id_secretaire` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_medecin` (`id_medecin`,`id_secretaire`),
  KEY `fk_schedule_sec` (`id_secretaire`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `schedule_list`
--

INSERT INTO `schedule_list` (`id`, `title`, `description`, `start_datetime`, `end_datetime`, `id_medecin`, `id_secretaire`) VALUES
(1, 'test', 'test', '2023-05-20 12:17:42', '2023-05-21 12:17:42', 1, NULL),
(6, 'updated 3', 'this one was updated', '2023-05-20 12:38:00', '2023-05-20 17:38:00', 1, NULL),
(7, 'test 2', 'description', '2023-05-20 12:43:00', '2023-05-22 18:43:00', 1, NULL),
(9, 'test 4', 'test', '2023-05-24 15:46:00', '2023-05-25 05:47:00', 1, NULL),
(10, 'test 3', 'test secretaire', '2023-05-12 15:15:00', '2023-05-12 21:15:00', NULL, 1),
(11, 'test 6', 'this is a test', '2023-05-31 15:16:00', '2023-05-31 20:16:00', NULL, 1),
(12, 'test 5', 'déscription', '2023-05-14 03:12:00', '2023-05-14 15:12:00', 1, NULL),
(13, 'test 6', 'test6', '2023-05-28 03:12:00', '2023-05-28 15:12:00', 1, NULL),
(15, 'test', 'test', '2023-05-01 05:48:00', '2023-05-02 05:48:00', 4, NULL),
(16, 'secretaire', 'RDV ', '2023-06-02 06:29:00', '2023-05-03 06:29:00', NULL, 2),
(17, 'traitant', 'traitant', '2023-05-06 06:29:00', '2023-05-07 06:29:00', 5, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `secretaire`
--

DROP TABLE IF EXISTS `secretaire`;
CREATE TABLE IF NOT EXISTS `secretaire` (
  `id_secretaire` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `adress` varchar(255) NOT NULL,
  `N_telephone` int NOT NULL,
  `email` varchar(255) NOT NULL,
  `id_utilisateur` int NOT NULL,
  PRIMARY KEY (`id_secretaire`),
  KEY `fk_1secr` (`id_utilisateur`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `secretaire`
--

INSERT INTO `secretaire` (`id_secretaire`, `nom`, `prenom`, `adress`, `N_telephone`, `email`, `id_utilisateur`) VALUES
(2, 'secretaire', 'secretaire', 'annaba', 62389, 'test@gmail.com', 3),
(3, 'sec', 'sec', 'annaba', 346, 'test@gmail.com', 3);

-- --------------------------------------------------------

--
-- Structure de la table `section`
--

DROP TABLE IF EXISTS `section`;
CREATE TABLE IF NOT EXISTS `section` (
  `id_section` int NOT NULL AUTO_INCREMENT,
  `nom_section` varchar(255) NOT NULL,
  PRIMARY KEY (`id_section`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `section`
--

INSERT INTO `section` (`id_section`, `nom_section`) VALUES
(1, 'cancer de sien');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

DROP TABLE IF EXISTS `utilisateur`;
CREATE TABLE IF NOT EXISTS `utilisateur` (
  `id_utilisateur` int NOT NULL AUTO_INCREMENT,
  `nom_utilisateur` varchar(50) NOT NULL,
  `mot_de_pass` varchar(20) NOT NULL,
  `admin` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_utilisateur`),
  UNIQUE KEY `nom_utilisateur` (`nom_utilisateur`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id_utilisateur`, `nom_utilisateur`, `mot_de_pass`, `admin`) VALUES
(2, 'Boulouh Ibtissam', 'admin', 0),
(3, 'secretaire', 'secretaire', 2),
(4, 'traitant', 'traitant', 1),
(5, 'traitant2', 'traitant2', 1);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `1_reference_des_patient`
--
ALTER TABLE `1_reference_des_patient`
  ADD CONSTRAINT `fk_1_1` FOREIGN KEY (`medecin_traitant`) REFERENCES `medecin` (`id_medecin`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_1_2` FOREIGN KEY (`id_section`) REFERENCES `section` (`id_section`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `16_recidive_et_traitement`
--
ALTER TABLE `16_recidive_et_traitement`
  ADD CONSTRAINT `fk_16_1` FOREIGN KEY (`Ndossier`) REFERENCES `1_reference_des_patient` (`id_reference_des_patient`);

--
-- Contraintes pour la table `17_rechute_mplus`
--
ALTER TABLE `17_rechute_mplus`
  ADD CONSTRAINT `fk_17_1` FOREIGN KEY (`Ndossier`) REFERENCES `1_reference_des_patient` (`id_reference_des_patient`);

--
-- Contraintes pour la table `18_ihc`
--
ALTER TABLE `18_ihc`
  ADD CONSTRAINT `fk_18_1` FOREIGN KEY (`Ndossier`) REFERENCES `1_reference_des_patient` (`id_reference_des_patient`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `19_maladie_metastique`
--
ALTER TABLE `19_maladie_metastique`
  ADD CONSTRAINT `fk_19_1` FOREIGN KEY (`Ndossier`) REFERENCES `1_reference_des_patient` (`id_reference_des_patient`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `20_grossesse`
--
ALTER TABLE `20_grossesse`
  ADD CONSTRAINT `fk_20_1` FOREIGN KEY (`Ndossier`) REFERENCES `1_reference_des_patient` (`id_reference_des_patient`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `21_devenir`
--
ALTER TABLE `21_devenir`
  ADD CONSTRAINT `fk_21_1` FOREIGN KEY (`Ndossier`) REFERENCES `1_reference_des_patient` (`id_reference_des_patient`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `medecin`
--
ALTER TABLE `medecin`
  ADD CONSTRAINT `fk_1user` FOREIGN KEY (`id_utilisateur`) REFERENCES `utilisateur` (`id_utilisateur`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `note`
--
ALTER TABLE `note`
  ADD CONSTRAINT `fk_note_med` FOREIGN KEY (`id_medecin`) REFERENCES `medecin` (`id_medecin`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_note_sec` FOREIGN KEY (`id_secretaire`) REFERENCES `secretaire` (`id_secretaire`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `protocole_a_recevoir`
--
ALTER TABLE `protocole_a_recevoir`
  ADD CONSTRAINT `fk_protocol_1` FOREIGN KEY (`Ndossier`) REFERENCES `1_reference_des_patient` (`id_reference_des_patient`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `schedule_list`
--
ALTER TABLE `schedule_list`
  ADD CONSTRAINT `fk_schedule_med` FOREIGN KEY (`id_medecin`) REFERENCES `medecin` (`id_medecin`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_schedule_sec` FOREIGN KEY (`id_secretaire`) REFERENCES `secretaire` (`id_secretaire`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `secretaire`
--
ALTER TABLE `secretaire`
  ADD CONSTRAINT `fk_1secr` FOREIGN KEY (`id_utilisateur`) REFERENCES `utilisateur` (`id_utilisateur`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
