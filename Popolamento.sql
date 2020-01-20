
-- --------------------------------------------------
-- Inserimento dei 'clienti' all'interno del database
-- --------------------------------------------------
insert into cliente (CodiceC,Indirizzo,Email) values (1,'Via Romagna, 12, Milano, 20999, (MI)','danielebandini@gmail.com');
insert into cliente (CodiceC,Indirizzo,Email) values (2,'Via Roma, 16, Ariano Irpino, 83031, (AV)','candidobianchi@libero.it');
insert into cliente (CodiceC,Indirizzo,Email) values (3,'Via Carpineto, 89, Roma, 00127, (RM)','albaborghi@gmail.com');
insert into cliente (CodiceC,Indirizzo,Email) values (4,'Via Fogliani, 26, Milano, 20996, (MI)','tecnologies@alice.it');
insert into cliente (CodiceC,Indirizzo,Email) values (5,'Via Maglioni, 56, Avellino, 83100, (AV)','computer@gmail.com');
insert into cliente (CodiceC,Indirizzo,Email) values (6,'Via Diaz, 90, Salerno, 84121, (SA)','pcandphone@libero.it');
insert into cliente (CodiceC,Indirizzo,Email) values (7,'Via Forte, 87, Genova, 16121,(GE)','mishaschiavo90@gmail.com');
insert into cliente (CodiceC,Indirizzo,Email) values (8,'Via Pollo, 32, Roma, 00128,(RM)','vivianovassallo@libero.it');
insert into cliente (CodiceC,Indirizzo,Email) values (9,'Via Campitello, 45, Firenze, 50100,(FI)','aimonebasile32@gmail.com');
insert into cliente (CodiceC,Indirizzo,Email) values (10,'Via Ugo, 86, Genova, 16122,(GE)','beatabenedetti@alice.it');
insert into cliente (CodiceC,Indirizzo,Email) values (11,'Via Lepore, 23, Milano, 20996,(MI)','efesto34@alice.it');
insert into cliente (CodiceC,Indirizzo,Email) values (12,'Via Prici, 46, Ariano Irpino, 83031,(AV)','granatovincenzo@gmail.com');

-- ---------------------------------------------------
-- Inserimento dei 'privati' all'interno del database
-- ---------------------------------------------------
insert into privato (CF,Nome,Cognome,Data_nascita,Cliente_CodiceC) values ('BNDDNL08B09C351U','Daniele','Bandini','1908/02/09',1);
insert into privato (CF,Nome,Cognome,Data_nascita,Cliente_CodiceC) values ('BNCCDD04D01A944Y','Candido','Bianchi','1904/04/01',2);
insert into privato (CF,Nome,Cognome,Data_nascita,Cliente_CodiceC) values ('BRGLBA05A70H501A','Alba','Borghi','1905/01/30',3);
insert into privato (CF,Nome,Cognome,Data_nascita,Cliente_CodiceC) values ('SCHMSH07C04F205D','Misha','Schiavo','1907/03/04',7);
insert into privato (CF,Nome,Cognome,Data_nascita,Cliente_CodiceC) values ('VSSVVN08A01D612O','Viviano','Vassallo','1908/01/01',8);
insert into privato (CF,Nome,Cognome,Data_nascita,Cliente_CodiceC) values ('BSLMNA03T04C351R','Aimone','Basile','1903/12/04',9);
insert into privato (CF,Nome,Cognome,Data_nascita,Cliente_CodiceC) values ('BNDBTE02P50G273Y','Beata','Benedetti','1902/09/10',10);
-- -----------------------------------------------------
-- Inserimento delle 'aziende' all'interno del database
-- -----------------------------------------------------
insert into azienda (Partita_iva,Ragione_sociale,Cliente_CodiceC) values ('09763846352','Tecnologies srl',4);
insert into azienda (Partita_iva,Ragione_sociale,Cliente_CodiceC) values ('89765437264','Computer srl',5);
insert into azienda (Partita_iva,Ragione_sociale,Cliente_CodiceC) values ('78632456098','Pc & Phone srl',6);
insert into azienda (Partita_iva,Ragione_sociale,Cliente_CodiceC) values ('47245330205','Efesto srl',11);
insert into azienda (Partita_iva,Ragione_sociale,Cliente_CodiceC) values ('17112400266','Granato Vincenzo srl',12);
-- ----------------------------------------------------
-- Inserimento di 'operatore' all'interno del database
-- ----------------------------------------------------
insert into operatore (CodiceO,Nome,Cognome,Data_nascita,CF) values (2,'Mia','Morandi','1904/07/22','MRNMIA04L62F205Z');
insert into operatore (CodiceO,Nome,Cognome,Data_nascita,CF) values (1,'Rossano','Moretto','1903/07/15','MRTRSN03L15D969I');

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
insert into telefono_fax (Numero,Tipo,Cliente_CodiceC) values ('+13308702044','T',1);
insert into telefono_fax (Numero,Tipo,Cliente_CodiceC) values ('+491771789232','T',2);
insert into telefono_fax (Numero,Tipo,Cliente_CodiceC) values ('+85264522640','T',3);
insert into telefono_fax (Numero,Tipo,Cliente_CodiceC) values ('+447441906544','T',4);
insert into telefono_fax (Numero,Tipo,Cliente_CodiceC) values ('+393399957060','T',5);
insert into telefono_fax (Numero,Tipo,Cliente_CodiceC) values ('+14389688199','T',6);
insert into telefono_fax (Numero,Tipo,Cliente_CodiceC) values ('+27872406045','T',7);
insert into telefono_fax (Numero,Tipo,Cliente_CodiceC) values ('+61476857122','T',8);
insert into telefono_fax (Numero,Tipo,Cliente_CodiceC) values ('+65767328648','F',9);
insert into telefono_fax (Numero,Tipo,Cliente_CodiceC) values ('+68437548342','F',10);
insert into telefono_fax (Numero,Tipo,Cliente_CodiceC) values ('+61476345332','F',11);
insert into telefono_fax (Numero,Tipo,Cliente_CodiceC) values ('+67565473847','F',12);
insert into telefono_fax (Numero,Tipo,Cliente_CodiceC) values ('+65879237455','F',1);
insert into telefono_fax (Numero,Tipo,Cliente_CodiceC) values ('+67364723542','F',2);
insert into telefono_fax (Numero,Tipo,Cliente_CodiceC) values ('+69057239073','F',3);
insert into telefono_fax (Numero,Tipo,Cliente_CodiceC) values ('+68759326473','F',4);
insert into telefono_fax (Numero,Tipo,Cliente_CodiceC) values ('+69875376442','E',5);
insert into telefono_fax (Numero,Tipo,Cliente_CodiceC) values ('+69437019323','E',6);
insert into telefono_fax (Numero,Tipo,Cliente_CodiceC) values ('+62341347434','E',7);
insert into telefono_fax (Numero,Tipo,Cliente_CodiceC) values ('+6O997502387','E',8);
insert into telefono_fax (Numero,Tipo,Cliente_CodiceC) values ('+60983928173','E',9);
insert into telefono_fax (Numero,Tipo,Cliente_CodiceC) values ('+64727817649','E',10);
insert into telefono_fax (Numero,Tipo,Cliente_CodiceC) values ('+69487236934','E',11);
insert into telefono_fax (Numero,Tipo,Cliente_CodiceC) values ('+68934720938','E',12);

-- ----------------------------------------------------------
-- Inserimento dei 'corsi formativi' all'interno del database
-- ----------------------------------------------------------
insert into corso_formativo (CodiceCF,Descrizione,Durata_in_ore,Data_inizio,Numero_esami) values (1,'Corso di grafica tridimensionale',10,'2019/08/02',8);
insert into corso_formativo (CodiceCF,Descrizione,Durata_in_ore,Data_inizio,Numero_esami) values (2,'Corso di programmazione in c',6,'2018/07/05',10);

-- ------------------------------------------------------------
-- Inserimento dei 'sistemi operativi' all'interno del database
-- ------------------------------------------------------------
insert into sistema_operativo (Sistema,Software_CodiceS) values ('Linux',1);
insert into sistema_operativo (Sistema,Software_CodiceS) values ('MAC-OS',1);
insert into sistema_operativo (Sistema,Software_CodiceS) values ('Windows 8',1);
insert into sistema_operativo (Sistema,Software_CodiceS) values ('Windows 10',2);
insert into sistema_operativo (Sistema,Software_CodiceS) values ('Linux',2);
insert into sistema_operativo (Sistema,Software_CodiceS) values ('Windows 8',2);
insert into sistema_operativo (Sistema,Software_CodiceS) values ('MAC-OS',3);
insert into sistema_operativo (Sistema,Software_CodiceS) values ('Windows 10',3);
insert into sistema_operativo (Sistema,Software_CodiceS) values ('Windows 8',3);
insert into sistema_operativo (Sistema,Software_CodiceS) values ('Windows 7',4);
insert into sistema_operativo (Sistema,Software_CodiceS) values ('Windows XP',4);
insert into sistema_operativo (Sistema,Software_CodiceS) values ('Windows 10',4);
insert into sistema_operativo (Sistema,Software_CodiceS) values ('Linux',5);
insert into sistema_operativo (Sistema,Software_CodiceS) values ('MAC-OS 8',5);
insert into sistema_operativo (Sistema,Software_CodiceS) values ('Windows 8',5);
insert into sistema_operativo (Sistema,Software_CodiceS) values ('Windows 10',6);
insert into sistema_operativo (Sistema,Software_CodiceS) values ('Windows 8',6);
insert into sistema_operativo (Sistema,Software_CodiceS) values ('Windows XP',6);

-- ------------------------------------------------------
-- Inserimento degli 'attestati' all'interno del database
-- ------------------------------------------------------
insert into attestato (Data_rilascio,Corso_Formativo_CodiceCF,Cliente_CodiceC) values ('2018/04/03',1,1);
insert into attestato (Data_rilascio,Corso_Formativo_CodiceCF,Cliente_CodiceC) values ('2018/05/05',1,2);
insert into attestato (Data_rilascio,Corso_Formativo_CodiceCF,Cliente_CodiceC) values ('2018/02/09',1,3);
insert into attestato (Data_rilascio,Corso_Formativo_CodiceCF,Cliente_CodiceC) values ('2018/08/08',1,4);
insert into attestato (Data_rilascio,Corso_Formativo_CodiceCF,Cliente_CodiceC) values ('2018/05/02',1,5);
insert into attestato (Data_rilascio,Corso_Formativo_CodiceCF,Cliente_CodiceC) values ('2018/03/03',1,6);
insert into attestato (Data_rilascio,Corso_Formativo_CodiceCF,Cliente_CodiceC) values ('2018/06/09',2,7);
insert into attestato (Data_rilascio,Corso_Formativo_CodiceCF,Cliente_CodiceC) values ('2018/08/09',2,8);
insert into attestato (Data_rilascio,Corso_Formativo_CodiceCF,Cliente_CodiceC) values ('2018/02/10',2,9);
insert into attestato (Data_rilascio,Corso_Formativo_CodiceCF,Cliente_CodiceC) values ('2018/12/08',2,10);
insert into attestato (Data_rilascio,Corso_Formativo_CodiceCF,Cliente_CodiceC) values ('2018/12/12',2,11);
insert into attestato (Data_rilascio,Corso_Formativo_CodiceCF,Cliente_CodiceC) values ('2018/02/01',2,12);

-- -----------------------------------------------------
-- Inserimento dei 'problemi' all'interno del database
-- -----------------------------------------------------
insert into problema (Descrizione,Numero,Risolto,Software_CodiceS,Cliente_CodiceC,Operatore_CodiceO) values ('Anomalie di backup',1,true,1,1,1);
insert into problema (Descrizione,Numero,Risolto,Software_CodiceS,Cliente_CodiceC,Operatore_CodiceO) values ('Crash continuo',2,false,1,1,2);
insert into problema (Descrizione,Numero,Risolto,Software_CodiceS,Cliente_CodiceC,Operatore_CodiceO) values ('Risolvere bug',3,true,1,2,1);
insert into problema (Descrizione,Numero,Risolto,Software_CodiceS,Cliente_CodiceC,Operatore_CodiceO) values ('Anomalie di backup',4,false,2,3,2);
insert into problema (Descrizione,Numero,Risolto,Software_CodiceS,Cliente_CodiceC,Operatore_CodiceO) values ('Il software non funziona',5,true,2,3,1);
insert into problema (Descrizione,Numero,Risolto,Software_CodiceS,Cliente_CodiceC,Operatore_CodiceO) values ('Crash',6,false,2,4,2);
insert into problema (Descrizione,Numero,Risolto,Software_CodiceS,Cliente_CodiceC,Operatore_CodiceO) values ('Troppi bug',7,true,3,5,1);
insert into problema (Descrizione,Numero,Risolto,Software_CodiceS,Cliente_CodiceC,Operatore_CodiceO) values ('Non riesco a trovare il comando',8,false,3,5,2);
insert into problema (Descrizione,Numero,Risolto,Software_CodiceS,Cliente_CodiceC,Operatore_CodiceO) values ('Si arresta in continuazione',9,true,3,6,1);
insert into problema (Descrizione,Numero,Risolto,Software_CodiceS,Cliente_CodiceC,Operatore_CodiceO) values ('Anomalie sul software acquistato',10,false,4,7,2);
insert into problema (Descrizione,Numero,Risolto,Software_CodiceS,Cliente_CodiceC,Operatore_CodiceO) values ('Impossibile aggiornare il software',11,true,4,7,1);
insert into problema (Descrizione,Numero,Risolto,Software_CodiceS,Cliente_CodiceC,Operatore_CodiceO) values ('Incompatibilità fra Windows e Linux',12,false,4,8,2);
insert into problema (Descrizione,Numero,Risolto,Software_CodiceS,Cliente_CodiceC,Operatore_CodiceO) values ('Fa crashare il computer',13,true,5,9,1);
insert into problema (Descrizione,Numero,Risolto,Software_CodiceS,Cliente_CodiceC,Operatore_CodiceO) values ('Ho acquistato la licenza ma dice che non è valida',14,false,5,9,2);
insert into problema (Descrizione,Numero,Risolto,Software_CodiceS,Cliente_CodiceC,Operatore_CodiceO) values ('GUI mancante',15,true,5,10,1);
insert into problema (Descrizione,Numero,Risolto,Software_CodiceS,Cliente_CodiceC,Operatore_CodiceO) values ('Ci sono davvero troppi bug',16,true,6,11,1);
insert into problema (Descrizione,Numero,Risolto,Software_CodiceS,Cliente_CodiceC,Operatore_CodiceO) values ('Incompatibilità su diversi sistemi',17,false,6,11,2);
insert into problema (Descrizione,Numero,Risolto,Software_CodiceS,Cliente_CodiceC,Operatore_CodiceO) values ('Arresto continuo',18,true,6,12,1);
insert into problema (Descrizione,Numero,Risolto,Software_CodiceS,Cliente_CodiceC,Operatore_CodiceO) values ('Anomalie in fase di apertura',19,true,6,12,2);

-- --------------------------------------------------------------
-- Inserimento dell'associazione 'segue' all'interno del database
-- --------------------------------------------------------------
insert into segue (Numero_esami_dati,Cliente_CodiceC,Corso_Formativo_CodiceCF) values (10,1,2);
insert into segue (Numero_esami_dati,Cliente_CodiceC,Corso_Formativo_CodiceCF) values (5,2,2);
insert into segue (Numero_esami_dati,Cliente_CodiceC,Corso_Formativo_CodiceCF) values (3,3,2);
insert into segue (Numero_esami_dati,Cliente_CodiceC,Corso_Formativo_CodiceCF) values (5,4,2);
insert into segue (Numero_esami_dati,Cliente_CodiceC,Corso_Formativo_CodiceCF) values (6,5,2);
insert into segue (Numero_esami_dati,Cliente_CodiceC,Corso_Formativo_CodiceCF) values (7,6,2);
insert into segue (Numero_esami_dati,Cliente_CodiceC,Corso_Formativo_CodiceCF) values (7,7,1);
insert into segue (Numero_esami_dati,Cliente_CodiceC,Corso_Formativo_CodiceCF) values (6,8,1);
insert into segue (Numero_esami_dati,Cliente_CodiceC,Corso_Formativo_CodiceCF) values (5,9,1);
insert into segue (Numero_esami_dati,Cliente_CodiceC,Corso_Formativo_CodiceCF) values (4,10,1);
insert into segue (Numero_esami_dati,Cliente_CodiceC,Corso_Formativo_CodiceCF) values (3,11,1);
insert into segue (Numero_esami_dati,Cliente_CodiceC,Corso_Formativo_CodiceCF) values (2,12,1);

-- -----------------------------------------------------------------
-- Inserimento dell'associazione 'acquista' all'interno del database
-- -----------------------------------------------------------------
insert into acquista (Software_CodiceS,Cliente_CodiceC) values (1,1);
insert into acquista (Software_CodiceS,Cliente_CodiceC) values (2,1);
insert into acquista (Software_CodiceS,Cliente_CodiceC) values (3,1);
insert into acquista (Software_CodiceS,Cliente_CodiceC) values (4,1);
insert into acquista (Software_CodiceS,Cliente_CodiceC) values (5,2);
insert into acquista (Software_CodiceS,Cliente_CodiceC) values (6,2);
insert into acquista (Software_CodiceS,Cliente_CodiceC) values (1,2);
insert into acquista (Software_CodiceS,Cliente_CodiceC) values (2,2);
insert into acquista (Software_CodiceS,Cliente_CodiceC) values (3,3);
insert into acquista (Software_CodiceS,Cliente_CodiceC) values (4,3);
insert into acquista (Software_CodiceS,Cliente_CodiceC) values (5,3);
insert into acquista (Software_CodiceS,Cliente_CodiceC) values (6,3);
insert into acquista (Software_CodiceS,Cliente_CodiceC) values (1,4);
insert into acquista (Software_CodiceS,Cliente_CodiceC) values (2,4);
insert into acquista (Software_CodiceS,Cliente_CodiceC) values (3,4);
insert into acquista (Software_CodiceS,Cliente_CodiceC) values (4,4);
insert into acquista (Software_CodiceS,Cliente_CodiceC) values (5,5);
insert into acquista (Software_CodiceS,Cliente_CodiceC) values (6,5);
insert into acquista (Software_CodiceS,Cliente_CodiceC) values (1,5);
insert into acquista (Software_CodiceS,Cliente_CodiceC) values (2,5);
insert into acquista (Software_CodiceS,Cliente_CodiceC) values (3,6);
insert into acquista (Software_CodiceS,Cliente_CodiceC) values (4,6);
insert into acquista (Software_CodiceS,Cliente_CodiceC) values (5,6);
insert into acquista (Software_CodiceS,Cliente_CodiceC) values (6,6);
insert into acquista (Software_CodiceS,Cliente_CodiceC) values (1,7);
insert into acquista (Software_CodiceS,Cliente_CodiceC) values (2,7);
insert into acquista (Software_CodiceS,Cliente_CodiceC) values (3,7);
insert into acquista (Software_CodiceS,Cliente_CodiceC) values (4,7);
insert into acquista (Software_CodiceS,Cliente_CodiceC) values (5,8);
insert into acquista (Software_CodiceS,Cliente_CodiceC) values (6,8);
insert into acquista (Software_CodiceS,Cliente_CodiceC) values (1,8);
insert into acquista (Software_CodiceS,Cliente_CodiceC) values (2,8);
insert into acquista (Software_CodiceS,Cliente_CodiceC) values (3,9);
insert into acquista (Software_CodiceS,Cliente_CodiceC) values (4,9);
insert into acquista (Software_CodiceS,Cliente_CodiceC) values (5,9);
insert into acquista (Software_CodiceS,Cliente_CodiceC) values (6,9);
insert into acquista (Software_CodiceS,Cliente_CodiceC) values (1,10);
insert into acquista (Software_CodiceS,Cliente_CodiceC) values (2,10);
insert into acquista (Software_CodiceS,Cliente_CodiceC) values (3,10);
insert into acquista (Software_CodiceS,Cliente_CodiceC) values (4,10);
insert into acquista (Software_CodiceS,Cliente_CodiceC) values (5,11);
insert into acquista (Software_CodiceS,Cliente_CodiceC) values (6,11);
insert into acquista (Software_CodiceS,Cliente_CodiceC) values (1,11);
insert into acquista (Software_CodiceS,Cliente_CodiceC) values (2,11);
insert into acquista (Software_CodiceS,Cliente_CodiceC) values (3,12);
insert into acquista (Software_CodiceS,Cliente_CodiceC) values (4,12);
insert into acquista (Software_CodiceS,Cliente_CodiceC) values (5,12);
insert into acquista (Software_CodiceS,Cliente_CodiceC) values (6,12);
