-- --------------------------------------------------------
-- Хост:                         localhost
-- Версия сервера:               5.5.15 - MySQL Community Server (GPL)
-- ОС Сервера:                   Win32
-- HeidiSQL Версия:              9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Дамп структуры базы данных sprvochnik
CREATE DATABASE IF NOT EXISTS `sprvochnik` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `sprvochnik`;


-- Дамп структуры для таблица sprvochnik.avtor
CREATE TABLE IF NOT EXISTS `avtor` (
  `idAvtor` int(11) NOT NULL AUTO_INCREMENT,
  `FIO` varchar(50) NOT NULL,
  `Data_rojdeniya` date DEFAULT NULL,
  PRIMARY KEY (`idAvtor`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

-- Дамп данных таблицы sprvochnik.avtor: ~22 rows (приблизительно)
/*!40000 ALTER TABLE `avtor` DISABLE KEYS */;
INSERT INTO `avtor` (`idAvtor`, `FIO`, `Data_rojdeniya`) VALUES
	(1, 'Krylov Ivan Andreevich', '1976-05-16'),
	(2, 'Melikov Dem\'yan Arsenievich', '1991-10-04'),
	(3, 'Zabolotnyj Miroslav Ermolaevich', '1598-02-18'),
	(4, 'Golubkina Vera Vasilievna', '1852-02-28'),
	(5, 'Kudryavcev Polikarp Makarovich', '1916-05-19'),
	(6, 'Dresvyanin Timur Ippolitovich', '1857-01-26'),
	(7, 'Urakov Naum Mart\'yanovich', '1987-09-13'),
	(8, 'Muhanova Marfa Vladilenovna', '1946-04-03'),
	(9, 'Budnikova Renata Stanislavovna', '1921-05-30'),
	(10, 'Timiryaev Elisej Timurovich', '1687-06-12'),
	(11, 'Dugin Vissarion Sokratovich', '1868-02-19'),
	(12, 'Musin Nestor Andronikovich', '1968-12-17'),
	(13, 'Okladnikov Zinovij Mart\'yanovich', '1935-07-13'),
	(14, 'Mihalicin Stepan Prokofievich', '1911-01-11'),
	(15, 'Kulaktina Vasilisa Vitalievna', '1901-03-14'),
	(16, 'Pondyakova Arina Mefodievna ', '1961-06-23'),
	(17, 'Raskatov Platon Evgenievich', '1978-01-01'),
	(18, 'Nikolaichev Mstislav Izmailovich', '1954-07-18'),
	(19, 'SHurupova Agniya Vladilenovna', '1899-05-07'),
	(20, 'Rostova Aleksandra Gennadievna ', '1906-02-27'),
	(22, 'dfg dfgfd', '1999-12-14'),
	(23, 'Andreev D.A.', '1997-11-24');
/*!40000 ALTER TABLE `avtor` ENABLE KEYS */;


-- Дамп структуры для таблица sprvochnik.frazi
CREATE TABLE IF NOT EXISTS `frazi` (
  `idFrazi` int(11) NOT NULL AUTO_INCREMENT,
  `fraza` varchar(200) NOT NULL,
  `idAvtor` int(11) DEFAULT NULL,
  `idTemi` int(11) DEFAULT NULL,
  `idIstoch` int(11) DEFAULT NULL,
  PRIMARY KEY (`idFrazi`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

-- Дамп данных таблицы sprvochnik.frazi: ~23 rows (приблизительно)
/*!40000 ALTER TABLE `frazi` DISABLE KEYS */;
INSERT INTO `frazi` (`idFrazi`, `fraza`, `idAvtor`, `idTemi`, `idIstoch`) VALUES
	(1, 'A voz i nine tam', 4, 2, 1),
	(2, 'A Vas\'ka slushaet da est', 19, 4, 5),
	(3, 'Na den\'gi uma ne kupish\'', 3, 1, 2),
	(4, 'A gde pastuh durak, tam i sobaki dury', 2, 6, 3),
	(5, 'Net huda bez dobra', 8, 5, 4),
	(6, 'Ne davaj deneg, ne teryaj druzhby', 4, NULL, NULL),
	(7, 'Horosha, hot\' vody s lica napejsya', 11, NULL, NULL),
	(8, 'Iz kislogo vinograda sladkogo vina ne poluchitsya', 20, NULL, NULL),
	(9, 'Orly letayut odinoko, barany pasutsya stadami', 13, NULL, NULL),
	(10, 'Dobro tvorit\' — sebya veselit\'', 7, NULL, NULL),
	(11, 'Kaplya dolbit kamen\' ne siloyu, a chasto padaya', 5, NULL, NULL),
	(12, 'Daleko shel, a dobra ne nashel', 16, NULL, NULL),
	(13, 'Samyj tonkij volos tozhe brosaet ten\'', 18, NULL, NULL),
	(14, 'Blagimi namereniyami doroga vymoshchena v ad', 1, NULL, NULL),
	(15, 'Videt\' legko - trudno predvidet\'', 9, NULL, NULL),
	(16, 'Bez deneg son krepche', 14, NULL, NULL),
	(17, 'Hot\' deneg ni grosha, da pohodka horosha', 5, NULL, NULL),
	(18, 'V kopnah ne seno, a v dolgah ne den\'gi', 6, NULL, NULL),
	(19, 'Zloj chelovek ne prozhivet v dobre vek', 10, NULL, NULL),
	(20, 'V kom dobra net, v tom i pravdy malo', 20, NULL, NULL),
	(21, 'Vesna otmykaet klyuchi i vody', 13, NULL, NULL),
	(22, 'Mnogo vody uteklo s tekh por', 17, NULL, NULL),
	(23, 'dobalenaya fraza', NULL, NULL, NULL);
/*!40000 ALTER TABLE `frazi` ENABLE KEYS */;


-- Дамп структуры для таблица sprvochnik.istochnik
CREATE TABLE IF NOT EXISTS `istochnik` (
  `idIstoch` int(11) NOT NULL AUTO_INCREMENT,
  `naimenovanie` varchar(60) NOT NULL,
  `God_izdaniya` int(4) DEFAULT NULL,
  PRIMARY KEY (`idIstoch`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- Дамп данных таблицы sprvochnik.istochnik: ~9 rows (приблизительно)
/*!40000 ALTER TABLE `istochnik` DISABLE KEYS */;
INSERT INTO `istochnik` (`idIstoch`, `naimenovanie`, `God_izdaniya`) VALUES
	(1, 'Vtoroi', 2001),
	(2, 'V boi', 1995),
	(3, 'Tretiy', 1999),
	(4, 'Arma', 2009),
	(5, '768', 1999),
	(6, 'okjlk', 1999),
	(7, 'ljkljkljkl', 8989),
	(8, 'ggfdgdfg', 5453),
	(9, 'Krilatie frazi', 1994);
/*!40000 ALTER TABLE `istochnik` ENABLE KEYS */;


-- Дамп структуры для таблица sprvochnik.temi
CREATE TABLE IF NOT EXISTS `temi` (
  `idTemi` int(11) NOT NULL AUTO_INCREMENT,
  `tema` varchar(50) NOT NULL,
  PRIMARY KEY (`idTemi`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- Дамп данных таблицы sprvochnik.temi: ~10 rows (приблизительно)
/*!40000 ALTER TABLE `temi` DISABLE KEYS */;
INSERT INTO `temi` (`idTemi`, `tema`) VALUES
	(1, 'Veter'),
	(2, 'Dobro'),
	(3, 'Zlo'),
	(4, 'Vesna'),
	(5, 'Den\'gi'),
	(6, 'Voda'),
	(7, 'Zemlya'),
	(8, 'Dojd\''),
	(9, 'ludi'),
	(10, 'Bolezn\'');
/*!40000 ALTER TABLE `temi` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
