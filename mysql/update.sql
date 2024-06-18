ALTER TABLE `Scripts` ENGINE=InnoDB;
ALTER TABLE `LogsFuncional` ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS `ProductosPermitidos` (
  `idDeProducto` int(11) NOT NULL AUTO_INCREMENT,
  `codigoDeProducto` int(11) NOT NULL,
  `habilitadoParaFastTrack` int(10) NOT NULL DEFAULT 1,
  PRIMARY KEY (`idDeProducto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1

CREATE TABLE IF NOT EXISTS `CoberturasPermitidas` (
  `idDeCobertura` int(11) NOT NULL AUTO_INCREMENT,
  `idDeProducto` int(11) NOT NULL,
  `codigoDeCobertura` int(11) NOT NULL,
  `habilitadoParaFastTrack` int(10) NOT NULL DEFAULT 1,
  PRIMARY KEY (`idDeCobertura`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1

CREATE TABLE IF NOT EXISTS `CoberturasPorProducto` (
  `idDeCoberturaPorProducto` int(11) NOT NULL AUTO_INCREMENT,
  `idDeProducto` int(11) NOT NULL,
  `idDeCobertura` int(11) NOT NULL,
  `habilitadoParaFastTrack` int(10) NOT NULL DEFAULT 1,
  PRIMARY KEY (`idDeCoberturaPorProducto`),
  CONSTRAINT FK_CoberturasPorProducto_ProductosPermitidos FOREIGN KEY (idDeProducto) REFERENCES ProductosPermitidos(`idDeProducto`),
  CONSTRAINT FK_CoberturasPorProducto_CoberturasPermitidas FOREIGN KEY (idDeCobertura) REFERENCES CoberturasPermitidas(`idDeCobertura`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1

CREATE TABLE IF NOT EXISTS `ValidacionesPorScript` (
  `idDeValidacion` int(11) NOT NULL AUTO_INCREMENT,
  `idScript` int(11) NOT NULL,
  `campoAComparar` varchar(255) NULL,
  `comparador` varchar(255) NOT NULL,
  `campoValorComparador` varchar(255) NOT NULL,
  `habilitadoParaFastTrack` int(10) NOT NULL DEFAULT 1,
  PRIMARY KEY(`idDeValidacion`),
  CONSTRAINT FK_ValidacionesPorScript_Scripts FOREIGN KEY (idScript) REFERENCES Scripts(`idScript`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1

CREATE TABLE IF NOT EXISTS `DocumentosPermitidos` (
  `idDeDocumentoPermitido` int(11) NOT NULL AUTO_INCREMENT,
  `idDeProducto` int(11) NOT NULL,
  `idDeCobertura` int(11) NOT NULL,
  `tipoDeDocumento` varchar(255) NOT NULL,
  `nombreDeDocumento` varchar(255) NOT NULL,
  `formato` varchar(255) NOT NULL,
  `debeContener` varchar(255) NOT NULL,
  `obligatorio` int(10) NOT NULL,
  `seRechazaSiCumpleConContenido` int(10) NOT NULL,
  PRIMARY KEY(`idDeDocumentoPermitido`),
  CONSTRAINT FK_DocumentosPermitidos_ProductosPermitidos FOREIGN KEY (idDeProducto) REFERENCES ProductosPermitidos(`idDeProducto`),
  CONSTRAINT FK_DocumentosPermitidos_CoberturasPermitidas FOREIGN KEY (idDeCobertura) REFERENCES CoberturasPermitidas(`idDeCobertura`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1

INSERT INTO `ProductosPermitidos` (`codigoDeProducto`) VALUES (1201);
INSERT INTO `ProductosPermitidos` (`codigoDeProducto`) VALUES (1202);
INSERT INTO `ProductosPermitidos` (`codigoDeProducto`) VALUES (1901);
INSERT INTO `ProductosPermitidos` (`codigoDeProducto`) VALUES (1902);
INSERT INTO `ProductosPermitidos` (`codigoDeProducto`) VALUES (1903);
INSERT INTO `ProductosPermitidos` (`codigoDeProducto`) VALUES (1904);
INSERT INTO `ProductosPermitidos` (`codigoDeProducto`) VALUES (1072);
INSERT INTO `ProductosPermitidos` (`codigoDeProducto`) VALUES (1701);

INSERT INTO `CoberturasPermitidas` (`idDeProducto`, `codigoDeCobertura`) VALUES (1, 1);
INSERT INTO `CoberturasPermitidas` (`idDeProducto`, `codigoDeCobertura`) VALUES (1, 2);
INSERT INTO `CoberturasPermitidas` (`idDeProducto`, `codigoDeCobertura`) VALUES (1, 3);
INSERT INTO `CoberturasPermitidas` (`idDeProducto`, `codigoDeCobertura`) VALUES (1, 4);
INSERT INTO `CoberturasPermitidas` (`idDeProducto`, `codigoDeCobertura`) VALUES (1, 5);
INSERT INTO `CoberturasPermitidas` (`idDeProducto`, `codigoDeCobertura`) VALUES (1, 6);
INSERT INTO `CoberturasPermitidas` (`idDeProducto`, `codigoDeCobertura`) VALUES (1, 7);
INSERT INTO `CoberturasPermitidas` (`idDeProducto`, `codigoDeCobertura`) VALUES (1, 8);
INSERT INTO `CoberturasPermitidas` (`idDeProducto`, `codigoDeCobertura`) VALUES (1, 9);
INSERT INTO `CoberturasPermitidas` (`idDeProducto`, `codigoDeCobertura`) VALUES (1, 10);

INSERT INTO `CoberturasPermitidas` (`idDeProducto`, `codigoDeCobertura`) VALUES (2, 730);
INSERT INTO `CoberturasPermitidas` (`idDeProducto`, `codigoDeCobertura`) VALUES (2, 780);

INSERT INTO `CoberturasPermitidas` (`idDeProducto`, `codigoDeCobertura`) VALUES (3, 1);
INSERT INTO `CoberturasPermitidas` (`idDeProducto`, `codigoDeCobertura`) VALUES (3, 2);
INSERT INTO `CoberturasPermitidas` (`idDeProducto`, `codigoDeCobertura`) VALUES (3, 3);
INSERT INTO `CoberturasPermitidas` (`idDeProducto`, `codigoDeCobertura`) VALUES (3, 4);
INSERT INTO `CoberturasPermitidas` (`idDeProducto`, `codigoDeCobertura`) VALUES (3, 5);
INSERT INTO `CoberturasPermitidas` (`idDeProducto`, `codigoDeCobertura`) VALUES (3, 6);

INSERT INTO `CoberturasPermitidas` (`idDeProducto`, `codigoDeCobertura`) VALUES (4, 1);

INSERT INTO `CoberturasPermitidas` (`idDeProducto`, `codigoDeCobertura`) VALUES (5, 1);

INSERT INTO `CoberturasPermitidas` (`idDeProducto`, `codigoDeCobertura`) VALUES (6, 1);
INSERT INTO `CoberturasPermitidas` (`idDeProducto`, `codigoDeCobertura`) VALUES (6, 2);

INSERT INTO `CoberturasPermitidas` (`idDeProducto`, `codigoDeCobertura`) VALUES (7, 1);
INSERT INTO `CoberturasPermitidas` (`idDeProducto`, `codigoDeCobertura`) VALUES (7, 2);

INSERT INTO `CoberturasPermitidas` (`idDeProducto`, `codigoDeCobertura`) VALUES (8, 3);
INSERT INTO `CoberturasPermitidas` (`idDeProducto`, `codigoDeCobertura`) VALUES (8, 6);
