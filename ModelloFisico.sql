/* Creazione database*/
DROP SCHEMA IF EXISTS SoftwareHouse;
CREATE SCHEMA SoftwareHouse;
USE SoftwareHouse ;

/*Creazione tabella Cliente*/
CREATE TABLE SoftwareHouse.Cliente (
  CodiceC INT UNSIGNED NOT NULL AUTO_INCREMENT,
  Indirizzo VARCHAR(100) NOT NULL,
  Email VARCHAR(50) NOT NULL,
  PRIMARY KEY (CodiceC)
)
ENGINE = InnoDB;

/*Creazione tabella Operatore*/
CREATE TABLE SoftwareHouse.Operatore (
  CodiceO INT UNSIGNED NOT NULL AUTO_INCREMENT,
  Nome VARCHAR(15) NOT NULL,
  Cognome VARCHAR(15) NOT NULL,
  Data_nascita DATE NOT NULL,
  CF CHAR(16) NOT NULL,
  PRIMARY KEY (CodiceO)
)
ENGINE = InnoDB;

/*Creazione tabella Software*/
CREATE TABLE SoftwareHouse.Software (
  CodiceS INT UNSIGNED NOT NULL AUTO_INCREMENT,
  Nome VARCHAR(30) NOT NULL,
  Tipo VARCHAR(20) NOT NULL,
  Prezzo FLOAT NOT NULL,
  Caratteristica TINYTEXT NOT NULL,
  Licenza VARCHAR(30) NOT NULL,
  Versione VARCHAR(8) NOT NULL,
  PRIMARY KEY (CodiceS),
  CHECK(Licenza='Software commerciale' or Licenza='Shareware' or Licenza='Adware' or Licenza='EULA' ),
  CHECK(Tipo='Software applicativo' or Tipo='Driver' or Tipo='Firmware'),
  CHECK(Versione LIKE "%.%.%")
)

ENGINE = InnoDB;

/*Creazione tabella Sistema_Operativo*/
CREATE TABLE SoftwareHouse.Sistema_Operativo (
  Sistema VARCHAR(20) NOT NULL,
  Software_CodiceS INT UNSIGNED NOT NULL,
  PRIMARY KEY (Sistema, Software_CodiceS),
    FOREIGN KEY (Software_CodiceS)
    REFERENCES SoftwareHouse.Software (CodiceS)
    ON DELETE CASCADE
)
ENGINE = InnoDB;

/*Creazione tabella Problema*/
CREATE TABLE SoftwareHouse.Problema (
  Descrizione TINYTEXT NOT NULL,
  Numero INT  UNSIGNED NOT NULL AUTO_INCREMENT,
  Risolto BOOLEAN DEFAULT false,
  Software_CodiceS INT UNSIGNED NOT NULL,
  Cliente_CodiceC INT UNSIGNED NOT NULL,
  Operatore_CodiceO INT UNSIGNED NOT NULL,
  PRIMARY KEY (Numero, Software_CodiceS),
    FOREIGN KEY (Software_CodiceS)
    REFERENCES SoftwareHouse.Software (CodiceS)
    ON DELETE CASCADE,
	FOREIGN KEY (Operatore_CodiceO)
    REFERENCES SoftwareHouse.Operatore (CodiceO)
    ON DELETE CASCADE,
    FOREIGN KEY (Cliente_CodiceC)
    REFERENCES SoftwareHouse.Cliente (CodiceC)
    ON DELETE CASCADE
)
ENGINE = InnoDB;

/*Creazione tabella Corso_Formativo*/
CREATE TABLE SoftwareHouse.Corso_Formativo (
  CodiceCF INT UNSIGNED NOT NULL AUTO_INCREMENT,
  Descrizione TINYTEXT NOT NULL,
  Durata_in_ore TINYINT UNSIGNED NOT NULL,
  Data_inizio DATE NOT NULL,
  Numero_esami TINYINT  UNSIGNED NOT NULL,
  PRIMARY KEY (CodiceCF)
)
ENGINE = InnoDB;

/*Creazione tabella Acquista*/
CREATE TABLE IF NOT EXISTS SoftwareHouse.Acquista (
  Software_CodiceS INT UNSIGNED NOT NULL,
  Cliente_CodiceC INT UNSIGNED NOT NULL,
  PRIMARY KEY (Cliente_CodiceC, Software_CodiceS),
    FOREIGN KEY (Software_CodiceS)
    REFERENCES SoftwareHouse.Software (CodiceS)
    ON DELETE CASCADE,
    FOREIGN KEY (Cliente_CodiceC)
    REFERENCES SoftwareHouse.Cliente (CodiceC)
    ON DELETE CASCADE
)
ENGINE = InnoDB;

/*Creazione tabella telefono/fax*/
CREATE TABLE SoftwareHouse.Telefono_Fax(
  Numero CHAR(14) NOT NULL,
  Tipo CHAR(1) NOT NULL,
  Cliente_CodiceC INT UNSIGNED NOT NULL,
  PRIMARY KEY (Numero, Cliente_CodiceC),
    FOREIGN KEY (Cliente_CodiceC)
    REFERENCES SoftwareHouse.Cliente (CodiceC)
    ON DELETE CASCADE,
    CHECK(Tipo='E' or Tipo='F' or Tipo='T')
)
ENGINE = InnoDB;

/*Creazione tabella Attestato*/
CREATE TABLE SoftwareHouse.Attestato (
  Data_rilascio DATE NOT NULL,
  Corso_Formativo_CodiceCF INT UNSIGNED NOT NULL,
  Cliente_CodiceC INT UNSIGNED NOT NULL,
  PRIMARY KEY (Corso_Formativo_CodiceCF, Cliente_CodiceC),
    FOREIGN KEY (Corso_Formativo_CodiceCF)
    REFERENCES SoftwareHouse.Corso_Formativo (CodiceCF)
    ON DELETE CASCADE,
     FOREIGN KEY (Cliente_CodiceC)
    REFERENCES SoftwareHouse.Cliente (CodiceC)
    ON DELETE CASCADE
)
ENGINE = InnoDB;

/*Creazione tabella Azienda*/
CREATE TABLE SoftwareHouse.Azienda (
  Partita_iva CHAR(13) NOT NULL,
  Ragione_sociale VARCHAR(30) NOT NULL,
  Cliente_CodiceC INT UNSIGNED NOT NULL,
  PRIMARY KEY (Cliente_CodiceC),
    FOREIGN KEY (Cliente_CodiceC)
    REFERENCES SoftwareHouse.Cliente (CodiceC)
    ON DELETE CASCADE
)
ENGINE = InnoDB;

/*Creazione tabella Privato*/
CREATE TABLE SoftwareHouse.Privato (
  CF CHAR(16) NOT NULL,
  Nome VARCHAR(15) NOT NULL,
  Cognome VARCHAR(15) NOT NULL,
  Data_nascita DATE NOT NULL,
  Cliente_CodiceC INT UNSIGNED NOT NULL,
  PRIMARY KEY (Cliente_CodiceC),
    FOREIGN KEY (Cliente_CodiceC)
    REFERENCES SoftwareHouse.Cliente (CodiceC)
    ON DELETE CASCADE
)
ENGINE = InnoDB;

/*Creazione tabella Segue*/
CREATE TABLE SoftwareHouse.Segue (
  Numero_esami_dati INT UNSIGNED NOT NULL,
  Cliente_CodiceC INT UNSIGNED NOT NULL,
  Corso_Formativo_CodiceCF INT UNSIGNED NOT NULL,
  PRIMARY KEY (Cliente_CodiceC, Corso_Formativo_CodiceCF),
    FOREIGN KEY (Cliente_CodiceC)
    REFERENCES SoftwareHouse.Cliente (CodiceC)
    ON UPDATE CASCADE,
    FOREIGN KEY (Corso_Formativo_CodiceCF)
    REFERENCES SoftwareHouse.Corso_Formativo (CodiceCF)
    ON UPDATE CASCADE)
ENGINE = InnoDB;
