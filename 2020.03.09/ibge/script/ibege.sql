-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           5.6.13 - MySQL Community Server (GPL)
-- OS do Servidor:               Win32
-- HeidiSQL Versão:              10.1.0.5464
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Copiando estrutura do banco de dados para ibege
CREATE DATABASE IF NOT EXISTS `ibege` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `ibege`;

-- Copiando estrutura para tabela ibege.cidade
CREATE TABLE IF NOT EXISTS `cidade` (
  `idcidade` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) DEFAULT NULL,
  `populacao` int(11) DEFAULT NULL,
  `dtfundacao` date DEFAULT NULL,
  `uf_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`idcidade`),
  KEY `fk_cidade_uf_id` (`uf_id`),
  CONSTRAINT `fk_cidade_uf_id` FOREIGN KEY (`uf_id`) REFERENCES `uf` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela ibege.cidade: ~27 rows (aproximadamente)
/*!40000 ALTER TABLE `cidade` DISABLE KEYS */;
INSERT INTO `cidade` (`idcidade`, `nome`, `populacao`, `dtfundacao`, `uf_id`) VALUES
	(1, 'São Paulo', 12800, '1554-01-25', 1),
	(2, 'Cafelândia', 17500, '1925-07-30', 1),
	(3, 'Pirajui', 25546, '1915-03-29', 1),
	(4, 'Bauru', 337094, '1896-01-07', 1),
	(5, 'Rio de Janeiro', 632, '1565-03-01', 2),
	(6, 'Santos', 433966, '1546-01-26', 2),
	(7, 'Minas Gerais', 2087, '1709-11-08', 3),
	(8, 'Abaete', 23233, '1842-11-05', 3),
	(9, 'Alagoas', 3322, '1817-09-16', 3),
	(10, 'Aracari', 2231, '1962-03-01', 3),
	(11, 'Washington', 633427, '1790-07-16', 6),
	(12, 'San Francisco', 884363, '1776-06-29', 6),
	(13, 'Williamsburg', 14444, '1871-04-23', 5),
	(14, 'Taos', 5668, '1852-07-12', 5),
	(15, ' San Antonio', 1493000000, '1718-06-13', 6),
	(16, 'Honolulu', 351792, '1907-04-30', 4),
	(17, ' Texas', 28700000, '1845-12-29', 4),
	(18, 'Carolina do Norte', 1038000, '1789-11-21', 6),
	(19, 'Nashville', 69100000, '1806-06-01', 5),
	(20, 'Chicago', 2147483647, '1833-12-03', 4),
	(21, 'Toronto', 5000, '1793-03-02', 7),
	(22, 'Vancouver', 2600, '1886-03-05', 8),
	(23, 'Montreal', 17000, '1642-05-17', 8),
	(24, 'Quebec City', 5800, '1608-07-03', 9),
	(25, 'Calgary', 1000000, '1875-07-22', 9),
	(26, 'Victoria', 85000, '1843-09-12', 7),
	(27, ' Whistler ', 11000, '1914-02-13', 9);
/*!40000 ALTER TABLE `cidade` ENABLE KEYS */;

-- Copiando estrutura para tabela ibege.pais
CREATE TABLE IF NOT EXISTS `pais` (
  `idPais` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idPais`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela ibege.pais: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `pais` DISABLE KEYS */;
INSERT INTO `pais` (`idPais`, `nome`) VALUES
	(1, 'Brasil'),
	(2, 'EUA'),
	(3, 'Canada');
/*!40000 ALTER TABLE `pais` ENABLE KEYS */;

-- Copiando estrutura para tabela ibege.uf
CREATE TABLE IF NOT EXISTS `uf` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) DEFAULT NULL,
  `pais_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK1_uf_id` (`pais_id`),
  CONSTRAINT `FK1_uf_id` FOREIGN KEY (`pais_id`) REFERENCES `pais` (`idPais`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- Copiando dados para a tabela ibege.uf: ~9 rows (aproximadamente)
/*!40000 ALTER TABLE `uf` DISABLE KEYS */;
INSERT INTO `uf` (`id`, `nome`, `pais_id`) VALUES
	(1, 'São Paulo', 1),
	(2, 'Rio de Janeiro', 1),
	(3, 'Minas Gerais', 1),
	(4, 'Texas', 2),
	(5, 'Havai', 2),
	(6, 'Florida', 2),
	(7, 'Alberta', 3),
	(8, 'Ontario', 3),
	(9, 'Quebec', 3);
/*!40000 ALTER TABLE `uf` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
