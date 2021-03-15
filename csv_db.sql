-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mer. 17 avr. 2019 à 11:18
-- Version du serveur :  5.7.24
-- Version de PHP :  7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `csv_db`
--

-- --------------------------------------------------------

--
-- Structure de la table `annonce`
--

DROP TABLE IF EXISTS `annonce`;
CREATE TABLE IF NOT EXISTS `annonce` (
  `idannonce` int(255) NOT NULL AUTO_INCREMENT,
  `adresse` varchar(180) NOT NULL,
  `superficie` float NOT NULL,
  `prix` int(10) NOT NULL,
  PRIMARY KEY (`idannonce`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `appartement`
--

DROP TABLE IF EXISTS `appartement`;
CREATE TABLE IF NOT EXISTS `appartement` (
  `idappartement` int(255) NOT NULL AUTO_INCREMENT,
  `numeroetage` int(5) NOT NULL,
  `nombatiment` varchar(150) NOT NULL,
  PRIMARY KEY (`idappartement`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `contact`
--

DROP TABLE IF EXISTS `contact`;
CREATE TABLE IF NOT EXISTS `contact` (
  `idcontact` int(255) NOT NULL AUTO_INCREMENT,
  `Email` varchar(50) NOT NULL,
  `message` varchar(200) NOT NULL,
  PRIMARY KEY (`idcontact`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `patient`
--

DROP TABLE IF EXISTS `patient`;
CREATE TABLE IF NOT EXISTS `patient` (
  `nom` varchar(11) NOT NULL,
  `Cin` int(8) NOT NULL,
  `prenom` varchar(15) NOT NULL,
  `telephone` int(8) NOT NULL,
  `mail` varchar(30) NOT NULL,
  `mot_de_passe` varchar(20) NOT NULL,
  `naissance` date NOT NULL,
  `sex` varchar(60) NOT NULL,
  `adresse` varchar(60) NOT NULL,
  PRIMARY KEY (`Cin`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `patient`
--

INSERT INTO `patient` (`nom`, `Cin`, `prenom`, `telephone`, `mail`, `mot_de_passe`, `naissance`, `sex`, `adresse`) VALUES
('hsn', 3231566, 'ljnkjbk', 2135461, 'cvjh,bkkjkj', 'hvkhv', '2019-04-04', 'kjhkjh', 'jjnknkj');

-- --------------------------------------------------------

--
-- Structure de la table `rendezvous`
--

DROP TABLE IF EXISTS `rendezvous`;
CREATE TABLE IF NOT EXISTS `rendezvous` (
  `idrendezvous` int(255) NOT NULL AUTO_INCREMENT,
  `daterendezvous` date NOT NULL,
  `lieurendezvous` varchar(150) NOT NULL,
  PRIMARY KEY (`idrendezvous`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `tbl_name`
--

DROP TABLE IF EXISTS `tbl_name`;
CREATE TABLE IF NOT EXISTS `tbl_name` (
  `COL 1` varchar(93) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `tbl_name`
--

INSERT INTO `tbl_name` (`COL 1`) VALUES
('<?xml version=1.0 encoding=utf-8 ?>'),
('<hibernate-mapping xmlns=urn:nhibernate-mapping-2.2 namespace=Houses assembly=Houses>'),
('    <class name=Annonce table=Annonce>'),
('        <id name=Idannonce type=Int32 unsaved-value=0>'),
('            <column name=idannonce sql-type=int not-null=true unique=true index=PRIMARY/>'),
('            <generator class=native />'),
('        </id>'),
('        <property name=Adresse type=String>'),
('            <column name=adresse sql-type=varchar not-null=true />'),
('        </property>'),
('        <property name=Superficie type=Unknown>'),
('            <column name=superficie sql-type=float not-null=true />'),
('        </property>'),
('        <property name=Prix type=Int32>'),
('            <column name=prix sql-type=int not-null=true />'),
('        </property>'),
('    </class>'),
('</hibernate-mapping><?xml version=1.0 encoding=utf-8 ?>'),
('<hibernate-mapping xmlns=urn:nhibernate-mapping-2.2 namespace=Houses assembly=Houses>'),
('    <class name=Appartement table=Appartement>'),
('        <id name=Idappartement type=Int32 unsaved-value=0>'),
('            <column name=idappartement sql-type=int not-null=true unique=true index=PRIMARY/>'),
('            <generator class=native />'),
('        </id>'),
('        <property name=Numeroetage type=Int32>'),
('            <column name=numeroetage sql-type=int not-null=true />'),
('        </property>'),
('        <property name=Nombatiment type=String>'),
('            <column name=nombatiment sql-type=varchar not-null=true />'),
('        </property>'),
('    </class>'),
('</hibernate-mapping><?xml version=1.0 encoding=utf-8 ?>'),
('<hibernate-mapping xmlns=urn:nhibernate-mapping-2.2 namespace=Houses assembly=Houses>'),
('    <class name=Client table=Client>'),
('        <property name=Nom type=String>'),
('            <column name=Nom sql-type=varchar not-null=true />'),
('        </property>'),
('        <id name=Cin type=Int32 unsaved-value=0>'),
('            <column name=cin sql-type=int not-null=true unique=true index=PRIMARY/>'),
('            <generator class=native />'),
('        </id>'),
('        <property name=Prenom type=String>'),
('            <column name=prenom sql-type=varchar not-null=true />'),
('        </property>'),
('        <property name=Telephone type=Int32>'),
('            <column name=Telephone sql-type=int not-null=true />'),
('        </property>'),
('        <property name=Email type=String>'),
('            <column name=Email sql-type=varchar not-null=true />'),
('        </property>'),
('        <property name=Password type=String>'),
('            <column name=password sql-type=varchar not-null=true />'),
('        </property>'),
('    </class>'),
('</hibernate-mapping><?xml version=1.0 encoding=utf-8 ?>'),
('<hibernate-mapping xmlns=urn:nhibernate-mapping-2.2 namespace=Houses assembly=Houses>'),
('    <class name=Contact table=Contact>'),
('        <id name=Idcontact type=Int32 unsaved-value=0>'),
('            <column name=idcontact sql-type=int not-null=true unique=true index=PRIMARY/>'),
('            <generator class=native />'),
('        </id>'),
('        <property name=Email type=String>'),
('            <column name=Email sql-type=varchar not-null=true />'),
('        </property>'),
('        <property name=Message type=String>'),
('            <column name=message sql-type=varchar not-null=true />'),
('        </property>'),
('    </class>'),
('</hibernate-mapping><?xml version=1.0 encoding=utf-8 ?>'),
('<hibernate-mapping xmlns=urn:nhibernate-mapping-2.2 namespace=Houses assembly=Houses>'),
('    <class name=Rendezvous table=Rendezvous>'),
('        <id name=Idrendezvous type=Int32 unsaved-value=0>'),
('            <column name=idrendezvous sql-type=int not-null=true unique=true index=PRIMARY/>'),
('            <generator class=native />'),
('        </id>'),
('        <property name=Daterendezvous type=Unknown>'),
('            <column name=daterendezvous sql-type=date not-null=true />'),
('        </property>'),
('        <property name=Lieurendezvous type=String>'),
('            <column name=lieurendezvous sql-type=varchar not-null=true />'),
('        </property>'),
('    </class>'),
('</hibernate-mapping><?xml version=1.0 encoding=utf-8 ?>'),
('<hibernate-mapping xmlns=urn:nhibernate-mapping-2.2 namespace=Houses assembly=Houses>'),
('    <class name=Villa table=Villa>'),
('        <id name=Idvilla type=Int32 unsaved-value=0>'),
('            <column name=idvilla sql-type=int not-null=true unique=true index=PRIMARY/>'),
('            <generator class=native />'),
('        </id>'),
('        <property name=Superficiepiscine type=Unknown>'),
('            <column name=superficiepiscine sql-type=float not-null=true />'),
('        </property>'),
('        <property name=Superficiejardin type=Unknown>'),
('            <column name=superficiejardin sql-type=float not-null=true />'),
('        </property>'),
('    </class>'),
('</hibernate-mapping>');

-- --------------------------------------------------------

--
-- Structure de la table `villa`
--

DROP TABLE IF EXISTS `villa`;
CREATE TABLE IF NOT EXISTS `villa` (
  `idvilla` int(255) NOT NULL AUTO_INCREMENT,
  `superficiepiscine` float NOT NULL,
  `superficiejardin` float NOT NULL,
  PRIMARY KEY (`idvilla`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
