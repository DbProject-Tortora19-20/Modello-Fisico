
-- --------------------------------------------------
-- Inserimento dei 'clienti' all'interno del database
-- --------------------------------------------------
insert into cliente (CodiceC,Indirizzo,Email) values (1,'Via Romagna, 12, Milano, 20999, (MI)','danielebandini@gmail.com');
insert into cliente (CodiceC,Indirizzo,Email) values (2,'Via Roma, 16, Ariano Irpino, 83031, (AV)','candidobianchi@libero.it');
insert into cliente (CodiceC,Indirizzo,Email) values (3,'Via Carpineto, 89, Roma, 00127, (RM)','albaborghi@gmail.com');
insert into cliente (CodiceC,Indirizzo,Email) values (4,'Via Fogliani, 26, Milano, 20996, (MI)','tecnologies@alice.it');
insert into cliente (CodiceC,Indirizzo,Email) values (5,'Via Maglioni, 56, Avellino, 83100, (AV)','computer@gmail.com');
insert into cliente (CodiceC,Indirizzo,Email) values (6,'Via Diaz, 90, Salerno, 84121, (SA)','pcandphones@libero.it');

-- ----------------------------------------------------
-- Inserimento di 'operatore' all'interno del database
-- ----------------------------------------------------
insert into operatore (CodiceO,Nome,Cognome,Data_nascita,CF,Ruolo) values (4,'Melchiorre','Ferrari','1902/07/22','FRRMCH03H30D969I','Tecnico');
insert into operatore (CodiceO,Nome,Cognome,Data_nascita,CF,Ruolo) values (3,'Fabiano','Di Giovanni','1902/09/28','DGVFBN02P28L736K','Tecnico');
insert into operatore (CodiceO,Nome,Cognome,Data_nascita,CF,Ruolo) values (2,'Mia','Morandi','1904/07/22','MRNMIA04L62F205Z','Commerciale');
insert into operatore (CodiceO,Nome,Cognome,Data_nascita,CF,Ruolo) values (1,'Rossano','Moretto','1903/07/15','MRTRSN03L15D969I','Commerciale');

-- ---------------------------------------------------
-- Inserimento dei 'software' all'interno del database
-- ---------------------------------------------------
insert into software (CodiceS,Nome,Tipo,Prezzo,Caratteristica,Licenza,Versione) values (1,'Word','Software applicativo',100,'Elaboratore di testo','Software commerciale','16.1.0');
insert into software (CodiceS,Nome,Tipo,Prezzo,Caratteristica,Licenza,Versione) values (2,'Excel','Software applicativo',90,'Elaboratore di fogli elettronici','Shareware','16.10.0');
insert into software (CodiceS,Nome,Tipo,Prezzo,Caratteristica,Licenza,Versione) values (3,'Hyper','Driver',0,'Driver per monitor','Adware','10.3.0');
insert into software (CodiceS,Nome,Tipo,Prezzo,Caratteristica,Licenza,Versione) values (4,'Sako','Firmware',0,'Alternativa al BIOS','EULA','9.8.0');
insert into software (CodiceS,Nome,Tipo,Prezzo,Caratteristica,Licenza,Versione) values (5,'Autocad','Software applicativo',150,'Programma per creare, modificare e gestire grafiche bidimensionali e tridimensionali','Software commerciale','10.4.7');
insert into software (CodiceS,Nome,Tipo,Prezzo,Caratteristica,Licenza,Versione) values (6,'Rhinoceros','Software applicativo',120,'Programma per creare, modificare e gestire grafiche bidimensionali e tridimensionali','Software commerciale','11.2.0');

-- -----------------------------------------------------------------
-- Inserimento dei 'numeri di telefono/fax' all'interno del database
-- -----------------------------------------------------------------
insert into telefono_fax (Numero,Tipo,Cliente_CodiceC) values ('+13308702044','F',6);
insert into telefono_fax (Numero,Tipo,Cliente_CodiceC) values ('+491771789232','T',5);
insert into telefono_fax (Numero,Tipo,Cliente_CodiceC) values ('+85264522640','T',4);
insert into telefono_fax (Numero,Tipo,Cliente_CodiceC) values ('+447441906544','F',3);
insert into telefono_fax (Numero,Tipo,Cliente_CodiceC) values ('+393399957060','E',2);
insert into telefono_fax (Numero,Tipo,Cliente_CodiceC) values ('+14389688199','F',1);
insert into telefono_fax (Numero,Tipo,Cliente_CodiceC) values ('+27872406045','T',1);
insert into telefono_fax (Numero,Tipo,Cliente_CodiceC) values ('+61476857122','T',6);

-- ----------------------------------------------------------
-- Inserimento dei 'corsi formativi' all'interno del database
-- ----------------------------------------------------------
insert into corso_formativo (CodiceCF,Descrizione,Durata_in_ore,Data_inizio,Numero_esami) values (1,'Corso di grafica tridimensionale',10,'2019/08/02',8);
insert into corso_formativo (CodiceCF,Descrizione,Durata_in_ore,Data_inizio,Numero_esami) values (2,'Corso di programmazione in c',6,'2018/07/05',10);
insert into corso_formativo (CodiceCF,Descrizione,Durata_in_ore,Data_inizio,Numero_esami) values (3,'Corso di grafica bidimensionale',10,'2019/07/03',8);
insert into corso_formativo (CodiceCF,Descrizione,Durata_in_ore,Data_inizio,Numero_esami) values (4,'Corso di programmazione ad oggetti',6,'2018/09/03',10);

-- ------------------------------------------------------------
-- Inserimento dei 'sistemi operativi' all'interno del database
-- ------------------------------------------------------------
insert into sistema_operativo (Sistema,Software_CodiceS) values ('Linux',1);
insert into sistema_operativo (Sistema,Software_CodiceS) values ('MAC-OS',1);
insert into sistema_operativo (Sistema,Software_CodiceS) values ('Windows 8',2);
insert into sistema_operativo (Sistema,Software_CodiceS) values ('Windows 10',2);
insert into sistema_operativo (Sistema,Software_CodiceS) values ('Linux',3);
insert into sistema_operativo (Sistema,Software_CodiceS) values ('Windows 8',3);
insert into sistema_operativo (Sistema,Software_CodiceS) values ('MAC-OS',4);
insert into sistema_operativo (Sistema,Software_CodiceS) values ('Windows 10',5);
insert into sistema_operativo (Sistema,Software_CodiceS) values ('Windows 8',6);

-- ------------------------------------------------------
-- Inserimento degli 'attestati' all'interno del database
-- ------------------------------------------------------
insert into attestato (Data_rilascio,Corso_Formativo_CodiceCF,Cliente_CodiceC) values ('2018/04/03',1,3);
insert into attestato (Data_rilascio,Corso_Formativo_CodiceCF,Cliente_CodiceC) values ('2018/05/02',2,3);
insert into attestato (Data_rilascio,Corso_Formativo_CodiceCF,Cliente_CodiceC) values ('2018/02/03',3,2);

-- -----------------------------------------------------
-- Inserimento dei 'problemi' all'interno del database
-- -----------------------------------------------------
insert into problema (Descrizione,Numero,Risolto,Software_CodiceS,Cliente_CodiceC,Operatore_CodiceO) values ('Anomalie di backup',1,true,6,6,4);
insert into problema (Descrizione,Numero,Risolto,Software_CodiceS,Cliente_CodiceC,Operatore_CodiceO) values ('Crash continuo',1,false,5,5,3);
insert into problema (Descrizione,Numero,Risolto,Software_CodiceS,Cliente_CodiceC,Operatore_CodiceO) values ('Risolvere bug',2,true,6,6,2);

-- ---------------------------------------------------
-- Inserimento dei 'privati' all'interno del database
-- ---------------------------------------------------
insert into privato (CF,Nome,Cognome,Data_nascita,Cliente_CodiceC) values ('BNDDNL08B09C351U','Daniele','Bandini','1908/02/09',1);
insert into privato (CF,Nome,Cognome,Data_nascita,Cliente_CodiceC) values ('BNCCDD04D01A944Y','Candido','Bianchi','1904/04/01',2);
insert into privato (CF,Nome,Cognome,Data_nascita,Cliente_CodiceC) values ('BRGLBA05A70H501A','Alba','Borghi','1905/01/30',3);

-- -----------------------------------------------------
-- Inserimento delle 'aziende' all'interno del database
-- -----------------------------------------------------
insert into azienda (Partita_iva,Ragione_sociale,Cliente_CodiceC) values ('09763846352','Tecnologies srl',4);
insert into azienda (Partita_iva,Ragione_sociale,Cliente_CodiceC) values ('89765437264','Computers srl',5);
insert into azienda (Partita_iva,Ragione_sociale,Cliente_CodiceC) values ('78632456098','Pc & Phone srl',6);

-- --------------------------------------------------------------
-- Inserimento dell'associazione 'segue' all'interno del database
-- --------------------------------------------------------------
insert into segue (Numero_esami_dati,Cliente_CodiceC,Corso_Formativo_CodiceCF) values (8,1,3);
insert into segue (Numero_esami_dati,Cliente_CodiceC,Corso_Formativo_CodiceCF) values (5,2,2);
insert into segue (Numero_esami_dati,Cliente_CodiceC,Corso_Formativo_CodiceCF) values (3,4,4);
insert into segue (Numero_esami_dati,Cliente_CodiceC,Corso_Formativo_CodiceCF) values (5,5,1);
insert into segue (Numero_esami_dati,Cliente_CodiceC,Corso_Formativo_CodiceCF) values (5,6,2);

-- -----------------------------------------------------------------
-- Inserimento dell'associazione 'acquista' all'interno del database
-- -----------------------------------------------------------------
insert into acquista (Software_CodiceS,Cliente_CodiceC) values (6,2);
insert into acquista (Software_CodiceS,Cliente_CodiceC) values (6,1);
insert into acquista (Software_CodiceS,Cliente_CodiceC) values (3,3);
insert into acquista (Software_CodiceS,Cliente_CodiceC) values (4,5);