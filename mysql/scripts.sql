CREATE DATABASE IF NOT EXISTS `fasttrack_dev`;
USE `fasttrack_dev`;

CREATE TABLE IF NOT EXISTS `Scripts` (
  `idScript` int(11) NOT NULL AUTO_INCREMENT,
  `nombreScript` varchar(100) DEFAULT NULL,
  `urlScript` varchar(255) DEFAULT NULL,
  `descripcionScript` varchar(255) DEFAULT NULL,
  `ordenScript` int(10) DEFAULT NULL,
  `activadoScript` tinyint(1) DEFAULT NULL,
  `createdAt` TIMESTAMP NULL DEFAULT NULL,
	`updatedAt` TIMESTAMP NULL DEFAULT NULL,
  PRIMARY KEY (`idScript`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `Scripts` (`idScript`, `nombreScript`, `urlScript`, `descripcionScript`, `ordenScript`, `activadoScript`) VALUES
(1, 'script1', '/var/www/fasttrack/scripts/scripts1.js', 'None', 1, 1),
(2, 'script2', '/var/www/fasttrack/scripts/scripts2.js', 'None', 2, 1),
(3, 'script3', '/var/www/fasttrack/scripts/scripts3.js', 'None', 3, 1),
(4, 'script4', '/var/www/fasttrack/scripts/scripts4.js', 'None', 4, 1),
(5, 'script5', '/var/www/fasttrack/scripts/scripts5.js', 'None', 5, 1),
(6, 'script6', '/var/www/fasttrack/scripts/scripts6.js', 'None', 6, 1);

DROP TABLE IF EXISTS `LogsFuncional`;

CREATE TABLE IF NOT EXISTS `LogsFuncional` (
  `idLog` int(11) NOT NULL AUTO_INCREMENT,
  `fechaInicioLog` TIMESTAMP NULL DEFAULT NULL,
  `fechaFinLog` TIMESTAMP NULL DEFAULT NULL,
  `fechaEjecucionLog` TIMESTAMP NULL DEFAULT NULL,
  `eventoLog` varchar(255) DEFAULT NULL,
  `siniestroLog` INT(50) DEFAULT NULL,
  `polizaLog` INT(50) DEFAULT NULL,
  `estadoLog` LONGTEXT DEFAULT NULL,
  `detallesLog` LONGTEXT DEFAULT NULL,
  `observacionLog` LONGTEXT DEFAULT NULL,
  `createdAt` TIMESTAMP NULL DEFAULT NULL,
	`updatedAt` TIMESTAMP NULL DEFAULT NULL,
  PRIMARY KEY (`idLog`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
