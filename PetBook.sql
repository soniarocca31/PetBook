-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Creato il: Apr 02, 2024 alle 20:23
-- Versione del server: 5.7.39
-- Versione PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `PetBook`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `Acquisti`
--

CREATE TABLE `Acquisti` (
  `Data` datetime NOT NULL,
  `Pagamento` enum('Visa','Mastercard','Paypal','Contrassegno') NOT NULL,
  `ProdottoID` varchar(4) DEFAULT NULL,
  `OwnerID` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `Acquisti`
--

INSERT INTO `Acquisti` (`Data`, `Pagamento`, `ProdottoID`, `OwnerID`) VALUES
('2024-04-02 00:00:00', 'Visa', NULL, NULL),
('2024-04-01 00:00:00', 'Mastercard', NULL, NULL),
('2024-03-31 00:00:00', 'Paypal', NULL, NULL),
('2024-03-30 00:00:00', 'Contrassegno', NULL, NULL),
('2024-03-29 00:00:00', 'Visa', NULL, NULL),
('2024-03-28 00:00:00', 'Mastercard', NULL, NULL),
('2024-03-27 00:00:00', 'Paypal', NULL, NULL),
('2024-03-26 00:00:00', 'Contrassegno', NULL, NULL),
('2024-03-25 00:00:00', 'Visa', NULL, NULL),
('2024-03-24 00:00:00', 'Mastercard', NULL, NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `AnimaleDomestico`
--

CREATE TABLE `AnimaleDomestico` (
  `PetID` varchar(4) NOT NULL,
  `NomePet` varchar(255) DEFAULT NULL,
  `Tipo` enum('Cane','Gatto','Coniglio','Roditore','Altro') NOT NULL,
  `Razza` varchar(255) DEFAULT NULL,
  `Sesso` enum('M','F') NOT NULL,
  `DataNascita` date DEFAULT NULL,
  `Info` text,
  `OwnerID` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `AnimaleDomestico`
--

INSERT INTO `AnimaleDomestico` (`PetID`, `NomePet`, `Tipo`, `Razza`, `Sesso`, `DataNascita`, `Info`, `OwnerID`) VALUES
('P001', 'Bea', 'Cane', 'Carlino', 'F', '2013-02-16', 'Allergia al pollo, sterilizzata, otite cronica', 'O123'),
('P046', 'Thumper', 'Coniglio', 'Mini Lop', 'M', '2021-01-20', 'Nessuna nota medica', 'O678'),
('P210', 'Coco', 'Altro', 'Pappagallo', 'M', '2020-06-18', 'In ottime condizioni di salute', 'O210'),
('P234', 'Nibbles', 'Roditore', 'Criceto', 'M', '2013-08-21', 'In buona salute', 'O345'),
('P268', 'Bella', 'Gatto', 'Persian', 'F', '2014-02-18', 'Nessuna nota medica', 'O543'),
('P321', 'Tommy', 'Cane', 'Maltese', 'M', '2017-12-25', 'Non castrato, soffre di dermatite', 'O678'),
('P342', 'Mortino', 'Roditore', 'Furetto', 'M', '2015-02-20', 'Nessuna nota medica', 'O123'),
('P357', 'Simba', 'Cane', 'Yorkshire Terrier', 'M', '2018-09-20', 'Nessuna nota medica', 'O789'),
('P369', 'Pallina', 'Coniglio', 'Angora', 'F', '2016-12-15', 'In perfetta salute', 'O456'),
('P435', 'Buddy', 'Cane', 'Labrador Retriever', 'M', '2010-12-18', 'Nessuna nota medica', 'O890'),
('P458', 'Whiskers', 'Gatto', 'British Shorthair', 'M', '2015-07-20', 'Nessuna nota medica', 'O654'),
('P484', 'Cinnamon', 'Coniglio', 'Mini Rex', 'M', '2018-08-20', 'Nessuna nota medica', 'O234'),
('P543', 'Snowball', 'Coniglio', 'Mini Lop', 'M', '2012-11-20', 'Vaccinato e sano', 'O890'),
('P567', 'Whiskers', 'Gatto', 'Siamese', 'M', '2015-02-20', 'Leggera epilessia', 'O567'),
('P572', 'Lucky', 'Cane', 'Golden Retriever', 'M', '2020-04-19', 'Vaccinazioni aggiornate', 'O567'),
('P584', 'Dusty', 'Coniglio', 'Netherland Dwarf', 'M', '2023-04-19', 'Nessuna nota medica', 'O345'),
('P626', 'Dudu', 'Cane', 'Cocker ', 'F', '2021-02-17', 'Gravida, allergia al pollo', 'O738'),
('P663', 'Martino', 'Cane', 'Bassotto', 'M', '2011-02-19', 'Allergia al pollo', 'O789'),
('P674', 'Oliver', 'Gatto', 'Siamese', 'M', '2022-10-19', 'Problemi gastrointestinali', 'O789'),
('P691', 'Pigiama', 'Gatto', 'Bengala', 'M', '2012-08-15', 'Cieco da un occhio, castrato', 'O204'),
('P732', 'Mimmi', 'Cane', 'Bulldog Francese', 'F', '2020-06-18', 'Nessuna nota medica', 'O738'),
('P789', 'Mittens', 'Gatto', 'Maine Coon', 'M', '2019-09-19', 'Diabetico', 'O234'),
('P822', 'Luna', 'Cane', 'Chihuahua', 'F', '2010-01-21', 'Nessuna nota medica', 'O268'),
('P823', 'Max', 'Cane', 'Volpino', 'M', '2016-10-14', 'Castrato, Cardiopatico', 'O456'),
('P824', 'Nino', 'Roditore', 'Porcellino d\'India', 'M', '2023-10-18', 'Nessuna nota medica', 'O482'),
('P832', 'Siria', 'Cane', 'Meticcio', 'F', '2024-02-15', 'Sterilizzata', 'O456'),
('P846', 'Pluto', 'Cane', 'Pincher', 'M', '2015-05-18', 'Incontinente', 'O482'),
('P876', 'Rocky', 'Cane', 'Bulldog Francese', 'M', '2015-12-17', 'Rischio obesità', 'O789'),
('P925', 'Stella', 'Altro', 'Iguana', 'F', '2023-02-14', NULL, 'O402'),
('P987', 'Fluffy', 'Coniglio', 'Netherland Dwarf', 'M', '2020-11-18', 'Sterilizzata', 'O890');

-- --------------------------------------------------------

--
-- Struttura della tabella `Eventi`
--

CREATE TABLE `Eventi` (
  `Titolo` varchar(60) NOT NULL,
  `Dettagli` varchar(255) DEFAULT NULL,
  `DataOra` datetime NOT NULL,
  `Prezzo` float DEFAULT NULL,
  `Invitati` varchar(255) DEFAULT NULL,
  `NomeLuogo` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `Eventi`
--

INSERT INTO `Eventi` (`Titolo`, `Dettagli`, `DataOra`, `Prezzo`, `Invitati`, `NomeLuogo`) VALUES
('Apericena per animali', 'Un apericena dedicato agli animali e ai loro padroni.', '2024-09-25 19:30:00', 10, 'Tutti', 'Pluto e co'),
('Caccia al tesoro per cani', 'Una caccia al tesoro dedicata ai cani e ai loro padroni.', '2024-12-20 14:00:00', 0, 'Cani', 'Gang del Bosco'),
('Caccia al tesoro per cani e gatti', 'Una caccia al tesoro dedicata ai cani e ai gatti e ai loro padroni.', '2024-01-10 13:00:00', 0, 'Cani, Gatti', 'Parco San Francesco'),
('Concorso di agility', 'Una competizione di agilità aperta a tutti i cani.', '2024-07-12 11:00:00', 5, 'Cani', 'Canini e Gattini'),
('Corsi di primo soccorso per animali', 'Corsi pratici di primo soccorso dedicati agli amici a quattro zampe.', '2024-04-20 14:00:00', 15.5, 'Tutti', 'Cuore Animale'),
('Corso di addestramento per gatti', 'Un corso pratico per insegnare al gatto alcuni comandi di base.', '2024-05-18 10:00:00', 20, 'Gatti', 'Happy Pet'),
('Corso di educazione ambientale per cani', 'Un corso per insegnare ai cani il rispetto dell\'ambiente e della natura.', '2024-05-22 09:30:00', 18, 'Cani', 'Villa degli Amici'),
('Corso di socializzazione per cuccioli', 'Un corso pratico per insegnare ai cuccioli a socializzare con altri animali.', '2024-10-15 10:00:00', 15, 'Cani, Gatti', 'Nonno Heidi'),
('Corso di yoga per animali', 'Un corso di yoga dedicato agli animali per favorire il loro benessere fisico e mentale.', '2024-07-02 18:00:00', 25, 'Tutti', 'Parco Sole e Luna'),
('Esposizione di rettili', 'Un\'evento dedicato alla mostra e alla vendita di rettili e accessori.', '2024-04-02 11:00:00', 5, 'Altri animali', 'Pronto Pet'),
('Festa della primavera per animali', 'Una festa all\'aria aperta per dare il benvenuto alla primavera insieme agli animali.', '2024-04-05 16:00:00', 0, 'Tutti', 'Parco Zampettiamo'),
('Festa della raccolta fondi', 'Una festa dedicata alla raccolta fondi per associazioni animaliste.', '2024-08-12 17:00:00', 5, 'Tutti', 'Qui la Zampa'),
('Festa di benvenuto per nuovi amici a quattro zampe', 'Una festa dedicata ai nuovi amici a quattro zampe appena arrivati nella città.', '2024-06-05 16:00:00', 0, 'Tutti', 'La Zampa Amica'),
('Festa di compleanno per cani', 'Una festa dedicata ai cani per festeggiare il loro compleanno.', '2024-08-18 18:00:00', 0, 'Cani', 'Pronto Pet'),
('Festa di Halloween per animali', 'Una festa a tema Halloween per animali con costumi e dolcetti.', '2024-11-02 16:30:00', 0, 'Tutti', 'Parco Cuccioli'),
('Fiera degli animali esotici', 'Una fiera dedicata agli animali esotici con esposizioni e conferenze.', '2024-11-05 10:00:00', 8.5, 'Altri animali', 'Stuart Little'),
('Giornata del benessere per gatti', 'Una giornata dedicata al benessere dei gatti con massaggi e coccole.', '2024-10-10 12:00:00', 0, 'Gatti', 'Io e Marley'),
('Giornata di adozione', 'Una giornata dedicata all\'adozione di animali in cerca di una famiglia.', '2024-11-20 14:00:00', 0, 'Tutti', 'Parco Cuccioli'),
('Giornata di giochi per cani', 'Una giornata dedicata ai giochi all\'aperto per cani di tutte le razze.', '2024-03-10 11:00:00', 0, 'Cani', 'Villa Felice'),
('Incontro tra amanti degli animali', 'Un incontro informale per scambiare esperienze e consigli tra amanti degli animali.', '2024-05-20 17:30:00', 0, 'Tutti', 'Io e Marley'),
('Mostra di gatti di razza', 'Una mostra di gatti di razza per ammirare le diverse razze felini.', '2024-01-15 11:00:00', 10, 'Gatti', 'La Carica dei 101'),
('Passeggiata in compagnia', 'Una passeggiata in compagnia degli animali per godere della natura insieme.', '2024-12-05 15:00:00', 0, 'Tutti', 'Parco del Fido'),
('Picnic con gli animali', 'Un picnic all\'aperto da condividere con i propri animali domestici.', '2024-02-20 12:00:00', 10, 'Tutti', 'Villa Allegra'),
('Seminario di allevamento responsabile', 'Un seminario per approfondire le tematiche legate all\'allevamento responsabile.', '2024-03-15 15:00:00', 12, 'Tutti', 'CuraPet'),
('Seminario sulla comunicazione con gli animali', 'Un seminario per imparare a comunicare meglio con i propri animali domestici.', '2024-08-25 16:00:00', 10, 'Tutti', 'CuraPet'),
('Seminario sulla nutrizione felina', 'Un seminario per approfondire le tematiche legate alla nutrizione dei gatti.', '2024-03-20 18:30:00', 12.5, 'Gatti', 'Cuore Peloso'),
('Sfilata di adozione', 'Una sfilata di animali in cerca di adozione per trovare loro una nuova famiglia.', '2024-04-05 14:00:00', 0, 'Tutti', 'CuraPet'),
('Sfilata di moda per cani', 'Una sfilata di moda dedicata ai nostri amici a quattro zampe.', '2024-05-10 15:30:00', 0, 'Cani', 'La Coda Felice'),
('Visita guidata all\'ambulatorio', 'Una visita guidata all\'ambulatorio per conoscere da vicino le attività svolte e i servizi offerti.', '2024-03-15 10:00:00', 0, 'Tutti', 'Amici a 4 Zampe'),
('Workshop di grooming', 'Un workshop pratico per imparare le tecniche di grooming per cani e gatti.', '2024-06-10 14:00:00', 20, 'Cani, Gatti', 'Pronto Pet');

-- --------------------------------------------------------

--
-- Struttura della tabella `Luoghi`
--

CREATE TABLE `Luoghi` (
  `NomeLuogo` varchar(80) NOT NULL,
  `Indirizzo` varchar(255) DEFAULT NULL,
  `Dettagli` varchar(255) DEFAULT NULL,
  `ServiziOfferti` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `Luoghi`
--

INSERT INTO `Luoghi` (`NomeLuogo`, `Indirizzo`, `Dettagli`, `ServiziOfferti`) VALUES
('Amici a 4 Zampe', 'Catania', 'Ambulatorio', 'Visite mediche, Vaccinazioni, Analisi cliniche'),
('Canini e Gattini', 'Bari', 'Ambulatorio', 'Visite mediche, Vaccinazioni, Radiografie'),
('Cuccioli Felici', 'Catania', 'Clinica', 'Visite mediche, Chirurgia, Analisi di laboratorio'),
('Cuore Animale', 'Genova', 'Ambulatorio', 'Visite mediche, Vaccinazioni, Chirurgia generale'),
('Cuore Peloso', 'Firenze', 'Clinica', 'Visite mediche, Chirurgia, Diagnostica per immagini'),
('CuraPet', 'Napoli', 'Clinica', 'Visite mediche, Chirurgia, Fisioterapia e riabilitazione'),
('Gang del Bosco', 'Bologna', 'Ambulatorio', 'Visite mediche, Vaccinazioni, Endocrinologia veterinaria'),
('Gatto Curioso', 'Bari', 'Clinica', 'Visite mediche, Chirurgia, Medicina preventiva'),
('Happy Pet', 'Torino', 'Clinica', 'Visite mediche, Chirurgia, Oftalmologia veterinaria'),
('Io e Marley', 'Roma', 'Ambulatorio', 'Visite mediche, Vaccinazioni, Dentistica veterinaria'),
('La Carica dei 101', 'Genova', 'Clinica', 'Visite mediche, Chirurgia, Medicina interna'),
('La Coda Felice', 'Firenze', 'Ambulatorio', 'Visite mediche, Vaccinazioni, Microchippatura'),
('La Zampa Amica', 'Napoli', 'Ambulatorio', 'Visite mediche, Vaccinazioni, Trattamenti antiparassitari'),
('Nonno Heidi', 'Catania', 'Clinica', 'Visite mediche, Chirurgia, Neurologia veterinaria'),
('Parco Cuccioli', 'Genova', 'Parco', 'Aree verdi, Zone giochi, Panchine e aree relax'),
('Parco del Fido', 'Bari', 'Parco', 'Aree verdi, Sentieri per passeggiate, Fontane e laghetti'),
('Parco San Francesco', 'Firenze', 'Parco', 'Aree verdi, Piste per corsa, Aree picnic'),
('Parco Sole e Luna', 'Bologna', 'Parco', 'Aree verdi, Aree giochi per cani, Zone relax con sdraio'),
('Parco Zampettiamo', 'Milano', 'Parco', 'Aree verdi, Area sgambamento, Piscine per cani'),
('Pet Park', 'Palermo', 'Parco', 'Aree verdi, Percorsi naturali, Aree di socializzazione'),
('Pluto e co', 'Milano', 'Ambulatorio', 'Visite mediche, Vaccinazioni, Esami del sangue'),
('Pronto Pet', 'Torino', 'Ambulatorio', 'Visite mediche, Vaccinazioni, Ecografie'),
('Qui la Zampa', 'Palermo', 'Clinica', 'Visite mediche, Chirurgia, Oncologia veterinaria'),
('San Bernardo', 'Bologna', 'Clinica', 'Visite mediche, Chirurgia, Ortopedia veterinaria'),
('Stelle Pelose', 'Roma', 'Clinica', 'Visite mediche, Chirurgia, Odontoiatria veterinaria'),
('Stuart Little', 'Palermo', 'Ambulatorio', 'Visite mediche, Vaccinazioni, Dermatologia veterinaria'),
('Villa Allegra', 'Napoli', 'Parco', 'Aree verdi, Area agility, Zone addestramento'),
('Villa degli Amici', 'Roma', 'Parco', 'Aree verdi, Percorsi per jogging, Zone relax con ombrelloni'),
('Villa Felice', 'Torino', 'Parco', 'Aree verdi, Recinzioni per giochi, Percorsi di agility'),
('Zampa Fortunata', 'Milano', 'Clinica', 'Visite mediche, Chirurgia, Cardiologia veterinaria');

-- --------------------------------------------------------

--
-- Struttura della tabella `Negozi`
--

CREATE TABLE `Negozi` (
  `NegozioID` varchar(4) NOT NULL,
  `NomeNegozio` varchar(255) DEFAULT NULL,
  `Indirizzo` varchar(255) DEFAULT NULL,
  `Orario` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `Negozi`
--

INSERT INTO `Negozi` (`NegozioID`, `NomeNegozio`, `Indirizzo`, `Orario`) VALUES
('N001', 'ArcaPlanet', 'Via dei Cani Felici, Roma', '9:00 - 18:00'),
('N002', 'Hobby Zoo', 'Via degli Animali, Milano', '10:00 - 20:00'),
('N003', 'Tutto Pet', 'Via dei Gatti, Napoli', '8:30 - 17:30'),
('N004', 'Tutto Pet', 'Via delle Zampe, Firenze', '9:30 - 19:30'),
('N005', 'ArcaPlanet', 'Via dei Cani, Torino', '10:00 - 18:00'),
('N006', 'Hobby Zoo', 'Via dei Gatti, Palermo', '8:00 - 20:00'),
('N007', 'ArcaPlanet', 'Via degli Animali, Bologna', '9:00 - 18:30'),
('N008', 'Tutto Pet', 'Via delle Code, Genova', '10:30 - 19:00'),
('N009', 'Hobby Zoo', 'Via dei Pet, Venezia', '8:00 - 17:00'),
('N010', 'Agripet', 'Via delle Pellicce, Catania', '9:00 - 18:00');

-- --------------------------------------------------------

--
-- Struttura della tabella `Prenotazioni`
--

CREATE TABLE `Prenotazioni` (
  `OwnerID` varchar(4) DEFAULT NULL,
  `PetID` varchar(4) DEFAULT NULL,
  `Tipologia` enum('Servizio','Veterinario') DEFAULT NULL,
  `NomeVet` varchar(50) DEFAULT NULL,
  `ServizioID` varchar(4) DEFAULT NULL,
  `Data_Servizio` datetime DEFAULT NULL,
  `Data_Visita` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `Prenotazioni`
--

INSERT INTO `Prenotazioni` (`OwnerID`, `PetID`, `Tipologia`, `NomeVet`, `ServizioID`, `Data_Servizio`, `Data_Visita`) VALUES
('O678', 'P046', 'Servizio', NULL, 'S021', '2024-04-23 11:30:00', NULL),
('O123', 'P001', 'Servizio', NULL, 'S001', '2024-04-15 00:00:00', NULL),
('O678', 'P046', 'Veterinario', 'Dott.ssa Viscardi Sofia', '', '2024-04-15 00:00:00', NULL),
('O210', 'P210', 'Servizio', NULL, 'S004', '2024-04-16 00:00:00', NULL),
('O345', 'P234', 'Veterinario', 'Dr. Tudisco Francesco', '', '2024-04-16 00:00:00', NULL),
('O543', 'P268', 'Servizio', 'Dr. Tudisco Francesco', 'S010', '2024-04-17 00:00:00', NULL),
('O678', 'P321', 'Veterinario', 'Dr. Virzì Luca', '', '2024-04-17 00:00:00', NULL),
('O789', 'P357', 'Veterinario', 'Dr. Ventimiglia Milo', '', '2024-04-18 00:00:00', NULL),
('O456', 'P369', 'Servizio', 'Dott.ssa Petrella Eleonora', 'S002', '2024-04-19 00:00:00', NULL),
('O890', 'P435', 'Veterinario', 'Dr. Virzì Luca', '', '2024-04-19 00:00:00', NULL),
('O654', 'P458', 'Servizio', 'Dott.ssa Petrella Eleonora', 'S013', '2024-04-20 00:00:00', NULL),
('O234', 'P484', 'Veterinario', 'Dr. Bianchi Marco', '', '2024-04-20 00:00:00', NULL),
('O890', 'P543', 'Servizio', NULL, 'S010', '2024-04-21 00:00:00', NULL),
('O567', 'P567', 'Veterinario', 'Dr. Martini Mattia', '', '2024-04-21 00:00:00', NULL),
('O567', 'P572', 'Servizio', 'Dr. Virzì Luca', 'S009', '2024-04-22 00:00:00', NULL),
('O345', 'P584', 'Veterinario', 'Dr. Esposito Simone', '', '2024-04-22 00:00:00', NULL),
('O738', 'P626', 'Servizio', 'Dott.ssa Ricca Martina', 'S008', '2024-04-23 00:00:00', NULL),
('O789', 'P663', 'Veterinario', 'Dr. Lopez Carmine', '', '2024-04-23 00:00:00', NULL),
('O789', 'P674', 'Servizio', 'Dott.ssa Santi Milena', 'S020', '2024-04-24 00:00:00', NULL),
('O204', 'P691', 'Veterinario', 'Dott.ssa Rizzo Sara', '', '2024-04-24 00:00:00', NULL),
('O738', 'P732', 'Servizio', NULL, 'S019', '2024-04-25 00:00:00', NULL),
('O234', 'P789', 'Veterinario', 'Dr. Bianchi Marco', '', '2024-04-25 00:00:00', NULL),
('O456', 'P823', 'Veterinario', 'Dr. Esposito Simone', '', '2024-04-26 00:00:00', NULL),
('O482', 'P824', 'Servizio', 'Dr. Virzì Luca', 'S016', '2024-04-27 00:00:00', NULL),
('O789', 'P824', 'Veterinario', 'Dr. Martini Mattia', '', '2024-04-27 00:00:00', NULL),
('O789', 'P824', 'Servizio', 'Dott.ssa Santi Milena', 'S003', '2024-04-28 00:00:00', NULL),
('O789', 'P824', 'Veterinario', 'Dr. Martini Mattia', '', '2024-04-28 00:00:00', NULL),
('O789', 'P824', 'Servizio', 'Dott.ssa Santi Milena', 'S006', '2024-04-29 00:00:00', NULL),
('O789', 'P824', 'Veterinario', 'Dr. Martini Mattia', '', '2024-04-29 00:00:00', NULL),
('O123', 'P001', 'Veterinario', 'Dott.ssa Greco Tiziana', NULL, '2024-04-29 16:00:00', NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `Prestazioni`
--

CREATE TABLE `Prestazioni` (
  `CodPrest` varchar(4) NOT NULL,
  `Tipologia` enum('Visita generale','Vaccinazioni varie','Analisi varie') DEFAULT NULL,
  `Dettagli` varchar(100) DEFAULT NULL,
  `Prezzo` float DEFAULT NULL,
  `NomeVet` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `Prestazioni`
--

INSERT INTO `Prestazioni` (`CodPrest`, `Tipologia`, `Dettagli`, `Prezzo`, `NomeVet`) VALUES
('PV01', 'Visita generale', 'Esame fisico completo e consultazione', 25, 'Dott.ssa Fiasella Carlotta'),
('PV02', 'Vaccinazioni varie', 'Vaccinazione contro: parassiti vari, rabbia, leishmaniosi', NULL, 'Dott.ssa Fiasella Carlotta'),
('PV03', 'Analisi varie', 'Analisi del sangue, urine e feci', 50, 'Dott.ssa Fiasella Carlotta'),
('PV04', 'Visita generale', 'Esame fisico completo e consultazione', 50, 'Dott.ssa Petrella Eleonora'),
('PV05', 'Vaccinazioni varie', 'Vaccinazione contro: parassiti vari, rabbia, leishmaniosi', NULL, 'Dott.ssa Petrella Eleonora'),
('PV06', 'Analisi varie', 'Analisi del sangue, urine e feci', 65, 'Dott.ssa Petrella Eleonora'),
('PV07', 'Visita generale', 'Esame fisico completo e consultazione', 30, 'Dott.ssa Moretti Francesca'),
('PV08', 'Vaccinazioni varie', 'Vaccinazione contro: parassiti vari, rabbia, leishmaniosi', 40, 'Dott.ssa Moretti Francesca'),
('PV09', 'Analisi varie', 'Analisi del sangue, urine e feci', 50, 'Dott.ssa Moretti Francesca'),
('PV10', 'Visita generale', 'Esame fisico completo e consultazione', 25, 'Dott.ssa Polidori Martina'),
('PV11', 'Vaccinazioni varie', 'Vaccinazione contro: parassiti vari, rabbia, leishmaniosi', NULL, 'Dott.ssa Polidori Martina'),
('PV12', 'Analisi varie', 'Analisi del sangue, urine e feci', 60, 'Dott.ssa Polidori Martina'),
('PV13', 'Visita generale', 'Esame fisico completo e consultazione', 40, 'Dott.ssa Ricca Martina'),
('PV14', 'Vaccinazioni varie', 'Vaccinazione contro: parassiti vari, rabbia, leishmaniosi', 70, 'Dott.ssa Ricca Martina'),
('PV15', 'Analisi varie', 'Analisi del sangue, urine e feci', NULL, 'Dott.ssa Ricca Martina'),
('PV16', 'Visita generale', 'Esame fisico completo e consultazione', 30, 'Dott.ssa Santi Milena'),
('PV17', 'Vaccinazioni varie', 'Vaccinazione contro: parassiti vari, rabbia, leishmaniosi', 70, 'Dott.ssa Santi Milena'),
('PV18', 'Analisi varie', 'Analisi del sangue, urine e feci', 45, 'Dott.ssa Santi Milena'),
('PV19', 'Visita generale', 'Esame fisico completo e consultazione', 40, 'Dott.ssa Rizzo Sara'),
('PV20', 'Vaccinazioni varie', 'Vaccinazione contro: parassiti vari, rabbia, leishmaniosi', 60, 'Dott.ssa Rizzo Sara'),
('PV21', 'Analisi varie', 'Analisi del sangue, urine e feci', 70, 'Dott.ssa Rizzo Sara'),
('PV22', 'Visita generale', 'Esame fisico completo e consultazione', 40, 'Dott.ssa Fichera Sofia'),
('PV23', 'Vaccinazioni varie', 'Vaccinazione contro: parassiti vari, rabbia, leishmaniosi', NULL, 'Dott.ssa Fichera Sofia'),
('PV24', 'Analisi varie', 'Analisi del sangue, urine e feci', 50, 'Dott.ssa Fichera Sofia'),
('PV25', 'Visita generale', 'Esame fisico completo e consultazione', 25, 'Dott.ssa Viscardi Sofia'),
('PV26', 'Vaccinazioni varie', 'Vaccinazione contro: parassiti vari, rabbia, leishmaniosi', NULL, 'Dott.ssa Viscardi Sofia'),
('PV27', 'Analisi varie', 'Analisi del sangue, urine e feci', NULL, 'Dott.ssa Viscardi Sofia'),
('PV28', 'Visita generale', 'Esame fisico completo e consultazione', 35, 'Dott.ssa Greco Tiziana'),
('PV29', 'Vaccinazioni varie', 'Vaccinazione contro: parassiti vari, rabbia, leishmaniosi', 60, 'Dott.ssa Greco Tiziana'),
('PV30', 'Analisi varie', 'Analisi del sangue, urine e feci', 80, 'Dott.ssa Greco Tiziana'),
('PV31', 'Visita generale', 'Esame fisico completo e consultazione', 30, 'Dr. Lopez Carmine'),
('PV32', 'Vaccinazioni varie', 'Vaccinazione contro: parassiti vari, rabbia, leishmaniosi', 50, 'Dr. Lopez Carmine'),
('PV33', 'Analisi varie', 'Analisi del sangue, urine e feci', 40, 'Dr. Lopez Carmine'),
('PV34', 'Visita generale', 'Esame fisico completo e consultazione', 40, 'Dr. Lucia Federico'),
('PV35', 'Vaccinazioni varie', 'Vaccinazione contro: parassiti vari, rabbia, leishmaniosi', 70, 'Dr. Lucia Federico'),
('PV36', 'Analisi varie', 'Analisi del sangue, urine e feci', NULL, 'Dr. Lucia Federico'),
('PV37', 'Visita generale', 'Esame fisico completo e consultazione', 35, 'Dr. Tudisco Francesco'),
('PV38', 'Vaccinazioni varie', 'Vaccinazione contro: parassiti vari, rabbia, leishmaniosi', 50, 'Dr. Tudisco Francesco'),
('PV39', 'Analisi varie', 'Analisi del sangue, urine e feci', 60, 'Dr. Tudisco Francesco'),
('PV40', 'Visita generale', 'Esame fisico completo e consultazione', 40, 'Dr. Virzì Luca'),
('PV41', 'Vaccinazioni varie', 'Vaccinazione contro: parassiti vari, rabbia, leishmaniosi', 60, 'Dr. Virzì Luca'),
('PV42', 'Analisi varie', 'Analisi del sangue, urine e feci', NULL, 'Dr. Virzì Luca'),
('PV43', 'Visita generale', 'Esame fisico completo e consultazione', NULL, 'Dr. Bianchi Marco'),
('PV44', 'Vaccinazioni varie', 'Vaccinazione contro: parassiti vari, rabbia, leishmaniosi', NULL, 'Dr. Bianchi Marco'),
('PV45', 'Analisi varie', 'Analisi del sangue, urine e feci', NULL, 'Dr. Bianchi Marco'),
('PV46', 'Visita generale', 'Esame fisico completo e consultazione', 35, 'Dr. Russo Marco'),
('PV47', 'Vaccinazioni varie', 'Vaccinazione contro: parassiti vari, rabbia, leishmaniosi', 60, 'Dr. Russo Marco'),
('PV48', 'Analisi varie', 'Analisi del sangue, urine e feci', 60, 'Dr. Russo Marco'),
('PV67', 'Visita generale', 'Esame fisico completo e consultazione', NULL, 'Dr. Ferrari Matteo'),
('PV68', 'Vaccinazioni varie', 'Vaccinazione contro: parassiti vari, rabbia, leishmaniosi', NULL, 'Dr. Ferrari Matteo'),
('PV69', 'Analisi varie', 'Analisi del sangue, urine e feci', NULL, 'Dr. Ferrari Matteo'),
('PV70', 'Visita generale', 'Esame fisico completo e consultazione', NULL, 'Dr. Martini Mattia'),
('PV71', 'Vaccinazioni varie', 'Vaccinazione contro: parassiti vari, rabbia, leishmaniosi', NULL, 'Dr. Martini Mattia'),
('PV72', 'Analisi varie', 'Analisi del sangue, urine e feci', NULL, 'Dr. Martini Mattia'),
('PV73', 'Visita generale', 'Esame fisico completo e consultazione', NULL, 'Dr. Ventimiglia Milo'),
('PV74', 'Vaccinazioni varie', 'Vaccinazione contro: parassiti vari, rabbia, leishmaniosi', NULL, 'Dr. Ventimiglia Milo'),
('PV75', 'Analisi varie', 'Analisi del sangue, urine e feci', NULL, 'Dr. Ventimiglia Milo'),
('PV76', 'Visita generale', 'Esame fisico completo e consultazione', NULL, 'Dr. Esposito Simone'),
('PV77', 'Vaccinazioni varie', 'Vaccinazione contro: parassiti vari, rabbia, leishmaniosi', NULL, 'Dr. Esposito Simone'),
('PV78', 'Analisi varie', 'Analisi del sangue, urine e feci', NULL, 'Dr. Esposito Simone');

-- --------------------------------------------------------

--
-- Struttura della tabella `Prodotti`
--

CREATE TABLE `Prodotti` (
  `ProdottoID` varchar(4) NOT NULL,
  `Nome` varchar(60) NOT NULL,
  `Tipologia` enum('Cucce e trasportini','Gioco','Toeletta','Accessori','Salute','Cibo') NOT NULL,
  `Descrizione` varchar(100) NOT NULL,
  `Prezzo` float NOT NULL,
  `Ricetta` enum('''Si''','''No''') NOT NULL,
  `Link` varchar(80) DEFAULT NULL,
  `Disponibilità` enum('Si','No') NOT NULL,
  `NegozioID` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `Prodotti`
--

INSERT INTO `Prodotti` (`ProdottoID`, `Nome`, `Tipologia`, `Descrizione`, `Prezzo`, `Ricetta`, `Link`, `Disponibilità`, `NegozioID`) VALUES
('PC01', 'Letto Confortevole', 'Cucce e trasportini', 'Letto imbottito per il riposo del tuo cane', 29.99, '\'No\'', 'https://www.arcaplanet.com/', 'Si', 'N001'),
('PC02', 'Ciotola Colorata', 'Accessori', 'Ciotola in plastica resistente per il cibo o l\'acqua del tuo animale domestico', 9.99, '\'No\'', 'https://www.hobbyzoo.com/', 'Si', 'N002'),
('PC03', 'Giocattolo a Molla', 'Gioco', 'Giocattolo divertente per gatti, con piume e molla', 5.99, '\'No\'', 'https://www.arcaplanet.com/', 'Si', 'N001'),
('PC04', 'Pettine Rimuovi Peli', 'Toeletta', 'Pettine per rimuovere facilmente i peli morti dal manto del tuo animale domestico', 12.99, '\'No\'', 'https://www.arcaplanet.com/', 'Si', 'N001'),
('PC05', 'Snack Dentali', 'Cibo', 'Snack per cani che favoriscono l\'igiene dentale', 7.49, '\'No\'', 'https://tuttopet.com/', 'Si', 'N005'),
('PC06', 'Cuccia Morbida', 'Cucce e trasportini', 'Cuccia imbottita e confortevole per il riposo del tuo gatto', 19.99, '\'No\'', 'https://tuttopet.com/', 'Si', 'N003'),
('PC07', 'Palla Rimbalzante', 'Gioco', 'Palla per cani resistente e rimbalzante per giochi interattivi', 3.99, '\'No\'', 'https://www.arcaplanet.com/', 'Si', 'N001'),
('PC08', 'Gabbietta per Uccelli', 'Accessori', 'Gabbia spaziosa e ben ventilata per uccelli di piccola taglia', 39.99, '\'No\'', 'https://www.hobbyzoo.com/', 'No', 'N002'),
('PC09', 'Guinzaglio Retrattile', 'Accessori', 'Guinzaglio per cani con funzione retrattile, lunghezza regolabile', 17.99, '\'No\'', 'https://dallaaallazampa.com/', 'Si', 'N003'),
('PC10', 'Giostra per Roditori', 'Gioco', 'Giostra divertente per roditori, con tunnel e scivoli', 14.99, '\'No\'', 'https://www.arcaplanet.com/', 'Si', 'N001'),
('PC11', 'Shampoo Idratante', 'Toeletta', 'Shampoo idratante e lenitivo per cani con pelli sensibili', 8.99, '\'No\'', 'https://petlandia.com/', 'Si', 'N005'),
('PC12', 'Pettorina Regolabile', 'Accessori', 'Pettorina per cani regolabile e resistente, in vari colori', 21.99, '\'No\'', 'https://tuttopet.com/', 'Si', 'N003'),
('PC13', 'Letto Riscaldato', 'Cucce e trasportini', 'Letto termico per animali domestici, ideale per l\'inverno', 34.99, '\'No\'', 'https://www.arcaplanet.com/', 'No', 'N001'),
('PC14', 'Collare Antiparassitario', 'Salute', 'Collare antiparassitario per cani e gatti, efficace contro zecche e pulci', 11.49, '\'No\'', 'https://www.arcaplanet.com/', 'Si', 'N001'),
('PC15', 'Pettorina per Gatti', 'Accessori', 'Pettorina regolabile per gatti, comoda e sicura', 16.99, '\'No\'', 'https://petlandia.com/', 'Si', 'N005'),
('PC16', 'Palla Squeaky', 'Gioco', 'Palla per cani con suono squeaky, perfetta per stimolare l\'attività fisica', 6.99, '\'No\'', 'https://dallaaallazampa.com/', 'Si', 'N003'),
('PC17', 'Set Spazzole Grooming', 'Toeletta', 'Set di spazzole e pettini per la toelettatura quotidiana dei pelosi', 27.99, '\'No\'', 'https://www.hobbyzoo.com/', 'Si', 'N002'),
('PC18', 'Cestino Caldo', 'Cucce e trasportini', 'Cestino imbottito e caldo per il riposo del tuo cane o gatto', 23.99, '\'No\'', 'https://petlandia.com/', 'Si', 'N005'),
('PC19', 'Pettine per Zampe', 'Toeletta', 'Pettine con denti arrotondati per rimuovere nodi e peli dalle zampe', 9.49, '\'No\'', 'https://tuttopet.com/', 'Si', 'N003'),
('PC20', 'Giocattolo a Masticare', 'Gioco', 'Giocattolo resistente per cani, per favorire la salute dentale', 10.99, '\'No\'', 'https://www.arcaplanet.com/', 'Si', 'N001'),
('PC21', 'Antiparassitario Spot-On', 'Salute', 'Trattamento mensile per il controllo delle pulci e delle zecche', 15.99, '\'Si\'', NULL, 'Si', 'N002'),
('PC22', 'Farmaco Antinfiammatorio', 'Salute', 'Farmaco per il controllo dei processi infiammatori nei cani e nei gatti', 19.99, '\'Si\'', NULL, 'Si', 'N001'),
('PC23', 'Integratore Vitaminico', 'Salute', 'Integratore vitaminico per cani di tutte le taglie e razze', 12.49, '\'Si\'', NULL, 'Si', 'N001'),
('PC24', 'Farmaco Antiparassitario', 'Salute', 'Farmaco per il trattamento di parassiti intestinali nei roditori', 9.99, '\'Si\'', NULL, 'Si', 'N005'),
('PC25', 'Collirio Antibatterico', 'Salute', 'Collirio oftalmico per il trattamento delle infezioni oculari nei cani', 8.99, '\'Si\'', NULL, 'No', 'N003'),
('PC26', 'Collare Floreale', 'Salute', 'Collare regolabile per cani con design floreale, elegante e alla moda', 9.99, '\'No\'', 'https://www.centropet.com/', 'Si', 'N001'),
('PC27', 'Sacca Trasportino', 'Cucce e trasportini', 'Sacca trasportino per gatti e piccoli cani, leggera e comoda', 18.49, '\'No\'', 'https://petlandia.com/', 'Si', 'N005'),
('PC28', 'Cappottino Impermeabile', 'Accessori', 'Cappottino impermeabile per cani, ideale per le giornate di pioggia', 24.99, '\'No\'', 'https://tuttopet.com/', 'Si', 'N003'),
('PC29', 'Set Giochi Interattivi', 'Gioco', 'Set di giochi interattivi per cani, per favorire l\'attività fisica e mentale', 29.99, '\'No\'', 'https://www.arcaplanet.com/', 'Si', 'N001'),
('PC30', 'Ciotola Rialzata', 'Accessori', 'Ciotola rialzata per cani e gatti, aiuta a mantenere una postura corretta durante il pasto', 13.49, '\'No\'', 'https://petlandia.com/', 'Si', 'N005');

-- --------------------------------------------------------

--
-- Struttura della tabella `Proprietario`
--

CREATE TABLE `Proprietario` (
  `OwnerID` varchar(4) NOT NULL,
  `NomeCognome` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Password` varchar(10) NOT NULL,
  `Telefono` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `Proprietario`
--

INSERT INTO `Proprietario` (`OwnerID`, `NomeCognome`, `Email`, `Password`, `Telefono`) VALUES
('O123', 'Sonia Rocca', 'sonia.rocca@example.com', '*******', '1234567890'),
('O204', 'Nicola Corsaro', 'nicola.corsaro@dominio.com', '*******', NULL),
('O210', 'Sara Bianchi', 'sara.bianchi@dominio.com', '*******', '210-543-6789'),
('O234', 'Giulia Neri', 'giulia.neri@dominio.com', '*******', '234-567-8901'),
('O242', 'Elisa Moretti', 'elisa.moretti@dominio.com', '*******', '123-450-9876'),
('O268', 'Alessia Esposito', 'alessia.esposito@dominio.com', '*******', '145-698-7234'),
('O345', 'Roberta Rossi', 'roberta.rossi@dominio.com', '*******', '345-678-9012'),
('O402', 'Sandra Andaloro', 'sandra.andaloro@dominio.com', '*******', NULL),
('O456', 'Sharon Tudisco', 'sharon.tudisco@dominio.com', '*******', '456-789-0123'),
('O478', 'Federico Bianchi', 'federico.bianchi@dominio.com', '*******', '176-589-0123'),
('O482', 'Agata Musumeci', 'agata.musumeci@dominio.com', '*******', '187-612-3456'),
('O543', 'Paolo Giallo', 'paolo.giallo@dominio.com', '*******', '543-876-5432'),
('O567', 'Alessia Gialli', 'alessia.gialli@dominio.com', '*******', '567-890-1234'),
('O654', 'Elena Russo', 'elena.russo@dominio.com', '*******', '198-776-5432'),
('O678', 'Luca D\'Ambra', 'luca.dambra@dominio.com', '*******', '678-901-2345'),
('O692', 'Simone Barbagallo', 'simone.barbagallo@dominio.com', '*******', '156-732-1890'),
('O738', 'Valentina Leone', 'valentina.leone@dominio.com', '*******', '112-278-9456'),
('O789', 'Luca Bianchi', 'luca.bianchi@dominio.com', '*******', '789-012-3456'),
('O873', 'Alessia Ramsamy', 'alessia.ramsamy@dominio.com', '*******', '384-522-9501'),
('O890', 'Giovanni Blu', 'giovanni.blu@dominio.com', '*******', '890-123-4567');

-- --------------------------------------------------------

--
-- Struttura della tabella `Recensioni`
--

CREATE TABLE `Recensioni` (
  `OwnerID` varchar(4) DEFAULT NULL,
  `ProdottoID` varchar(4) DEFAULT NULL,
  `Rating` enum('1','2','3','4','5') DEFAULT NULL,
  `Commento` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `Recensioni`
--

INSERT INTO `Recensioni` (`OwnerID`, `ProdottoID`, `Rating`, `Commento`) VALUES
('O123', 'PC01', '4', 'Mio cane adora questo letto, sembra molto comodo.'),
('O678', 'PC02', '5', 'La ciotola è molto resistente e ha colori vivaci.'),
('O210', 'PC03', '4', 'Il giocattolo è diventato il passatempo preferito del mio pappagallo.'),
('O345', 'PC04', '3', 'Il pettine fa il suo lavoro ma sembra un po\' fragile.'),
('O543', 'PC05', '5', 'Gli snack dentali sono ottimi, il mio cane li adora.'),
('O678', 'PC06', '4', 'La cuccia è morbida e sembra resistente.'),
('O123', 'PC07', '5', 'La palla rimbalza molto bene e il mio cane si diverte tantissimo.'),
('O789', 'PC08', '3', 'La gabbietta è un po\' piccola per il mio uccellino.'),
('O890', 'PC09', '5', 'Il guinzaglio retrattile è comodo e funzionale.'),
('O654', 'PC10', '4', 'La giostra per roditori è molto divertente per i miei conigli.'),
('O234', 'PC11', '5', 'Lo shampoo ha un ottimo profumo e lascia il pelo lucido.'),
('O456', 'PC12', '4', 'La pettorina è comoda e si regola facilmente.'),
('O890', 'PC13', '2', 'Il letto termico non sembra funzionare molto bene.'),
('O123', 'PC14', '4', 'Il collare antiparassitario ha tenuto lontane le pulci dal mio cane.'),
('O210', 'PC15', '5', 'La pettorina per gatti è fantastica e sicura.'),
('O345', 'PC16', '4', 'Il giocattolo a masticare è molto resistente.'),
('O543', 'PC17', '5', 'Lo set di spazzole è perfetto per la toelettatura quotidiana.'),
('O678', 'PC18', '4', 'Il cestino caldo è morbidissimo, il mio gatto lo adora.'),
('O789', 'PC19', '3', 'Il pettine per zampe è un po\' troppo rigido.'),
('O890', 'PC20', '5', 'Il giocattolo è diventato il preferito del mio cane.'),
('O234', 'PC21', '4', 'Lo spot-on antiparassitario ha funzionato bene per il mio cane.'),
('O456', 'PC22', '3', 'Il farmaco antinfiammatorio sembra non avere molti effetti.'),
('O567', 'PC23', '4', 'L\'integratore vitaminico sembra avere effetti positivi sul mio cane.'),
('O654', 'PC24', '5', 'Il farmaco antiparassitario ha tenuto lontani i parassiti.'),
('O678', 'PC25', '4', 'Il collirio ha aiutato a guarire l\'infezione oculare del mio gatto.'),
('O789', 'PC26', '5', 'Il collare è comodo e ha un bellissimo design.'),
('O890', 'PC27', '4', 'La sacca trasportino è molto pratica.'),
('O123', 'PC28', '5', 'Il cappottino impermeabile tiene caldo e asciutto il mio cane.'),
('O210', 'PC29', '4', 'I giochi interattivi tengono impegnato il mio cane per ore.'),
('O345', 'PC30', '5', 'La ciotola rialzata è comoda e aiuta il mio gatto a mangiare meglio.');

-- --------------------------------------------------------

--
-- Struttura della tabella `Servizi`
--

CREATE TABLE `Servizi` (
  `ServizioID` varchar(4) NOT NULL,
  `Nome` varchar(255) DEFAULT NULL,
  `Dettagli` varchar(255) DEFAULT NULL,
  `Prezzo` float DEFAULT NULL,
  `NegozioID` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `Servizi`
--

INSERT INTO `Servizi` (`ServizioID`, `Nome`, `Dettagli`, `Prezzo`, `NegozioID`) VALUES
('S001', 'Toelettatura Completa', 'Servizio completo di toelettatura, comprendente lavaggio, asciugatura, taglio del pelo e delle unghie', 40, 'N003'),
('S002', 'Taglio del Pelo', 'Taglio professionale del pelo con varie opzioni di styling', 30, 'N001'),
('S003', 'Pulizia delle Orecchie', 'Pulizia accurata delle orecchie per prevenire infezioni e problemi auricolari', 15, 'N002'),
('S004', 'Applicazione Antiparassitario', 'Applicazione di antiparassitari esterni per proteggere l\'animale da pulci e zecche', 20, 'N004'),
('S005', 'Bagno e Asciugatura', 'Bagno rilassante seguito da asciugatura professionale', 25, 'N003'),
('S006', 'Taglio delle Unghie', 'Taglio sicuro e preciso delle unghie per evitare problemi di crescita eccessiva', 10, 'N006'),
('S008', 'Massaggio Rilassante', 'Massaggio per alleviare lo stress e favorire il benessere dell\'animale', 30, 'N001'),
('S009', 'Trimming del Mantello', 'Taglio e definizione del mantello per una migliore igiene e estetica', 25, 'N002'),
('S010', 'Spazzolatura Profonda', 'Spazzolatura accurata per rimuovere nodi e peli morti', 15, 'N004'),
('S013', 'Bagno alla Lavanda', 'Bagno rilassante con shampoo alla lavanda per ridurre lo stress e favorire il sonno', 20, 'N004'),
('S016', 'Bagno all\'Aloe Vera', 'Bagno lenitivo all\'estratto di aloe vera per pelli sensibili e irritate', 30, 'N004'),
('S018', 'Igienizzazione degli Occhi', 'Pulizia delicata e igienizzazione degli occhi per prevenire infezioni e irritazioni', 15, 'N006'),
('S019', 'Asciugatura a Ultrasuoni', 'Asciugatura rapida e delicata mediante ultrasuoni per ridurre il rischio di irritazioni cutanee', 20, 'N003'),
('S020', 'Spazzolatura delle Denti', 'Spazzolatura professionale per una corretta igiene orale e prevenzione del tartaro', 25, 'N001'),
('S021', 'Bagno e Asciugatura', 'Servizio completo di bagno e asciugatura per animali di piccola taglia', 20, 'N003'),
('S022', 'Taglio delle Unghie', 'Taglio professionale delle unghie per cani e gatti', 10, 'N001'),
('S023', 'Pulizia delle Orecchie', 'Pulizia accurata e delicata delle orecchie per prevenire infezioni', 15, 'N002'),
('S025', 'Bagnetto Profumato', 'Bagno con shampoo profumato per un pelo lucente e una pelle sana', 25, 'N003'),
('S027', 'Trimming delle Zampe', 'Taglio preciso e sicuro delle zampe per una migliore igiene e estetica', 12, 'N004'),
('S028', 'Massaggio Rilassante', 'Massaggio per ridurre lo stress e favorire il benessere generale', 20, 'N001');

-- --------------------------------------------------------

--
-- Struttura della tabella `Veterinario`
--

CREATE TABLE `Veterinario` (
  `NomeVet` varchar(50) NOT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Indirizzo` varchar(255) DEFAULT NULL,
  `Telefono` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `Veterinario`
--

INSERT INTO `Veterinario` (`NomeVet`, `Email`, `Indirizzo`, `Telefono`) VALUES
('Dott.ssa Fiasella Carlotta', 'carlotta.fiasella@vetmail.com', 'Genova', '639-207-8546'),
('Dott.ssa Fichera Sofia', 'sofia.fichera@vetmail.com', 'Napoli', '234-567-8901'),
('Dott.ssa Greco Tiziana', 'tiziana.greco@vetmail.com', 'Catania', '347-892-4561'),
('Dott.ssa Moretti Francesca', 'francesca.moretti@vetmail.com', 'Bologna', '890-123-4567'),
('Dott.ssa Petrella Eleonora', 'eleonora.petrella@vetmail.com', 'Torino', '345-678-9012'),
('Dott.ssa Polidori Martina', 'martina.polidori@vetmail.com', 'Firenze', '555-321-7890'),
('Dott.ssa Ricca Martina', 'maria.perletti@vetmail.com', 'Roma', '416-735-9824'),
('Dott.ssa Rizzo Sara', 'sara.rizzo@vetmail.com', 'Palermo', '478-216-5039'),
('Dott.ssa Santi Milena', 'milena.santi@vetmail.com', 'Bari', '639-207-8546'),
('Dott.ssa Viscardi Sofia', 'sofia.viscardi@vetmail.com', 'Milano', '134-786-5920'),
('Dr. Bianchi Marco', 'marco.bianchi@vetmail.com', 'Milano', '123-456-7890'),
('Dr. Esposito Simone', 'simone.esposito@vetmail.com', 'Napoli', '689-475-2365'),
('Dr. Ferrari Matteo', 'matteo.ferrari@vetmail.com', 'Bologna', '204-786-9512'),
('Dr. Lopez Carmine', 'carmine.lopez@vetmail.com', 'Palermo', '567-890-1234'),
('Dr. Lucia Federico', 'federico.lucia@vetmail.com', 'Genova', '291-647-8305'),
('Dr. Martini Mattia', 'mattia.martini@vetmail.com', 'Firenze', '590-314-8672'),
('Dr. Russo Marco', 'marco.russo@vetmail.com', 'Torino', '627-480-9135'),
('Dr. Tudisco Francesco', 'francesco.tudisco@vetmail.com', 'Roma', '543-876-5432'),
('Dr. Ventimiglia Milo', 'milo.ventimiglia@vetmail.com', 'Bari', '134-786-5920'),
('Dr. Virzì Luca', 'luca.virzì@vetmail.com', 'Catania', '876-543-2109');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `Acquisti`
--
ALTER TABLE `Acquisti`
  ADD KEY `ProdottoID` (`ProdottoID`),
  ADD KEY `OwnerID` (`OwnerID`);

--
-- Indici per le tabelle `AnimaleDomestico`
--
ALTER TABLE `AnimaleDomestico`
  ADD PRIMARY KEY (`PetID`),
  ADD KEY `OwnerID` (`OwnerID`);

--
-- Indici per le tabelle `Eventi`
--
ALTER TABLE `Eventi`
  ADD PRIMARY KEY (`Titolo`),
  ADD KEY `NomeLuogo` (`NomeLuogo`);

--
-- Indici per le tabelle `Luoghi`
--
ALTER TABLE `Luoghi`
  ADD PRIMARY KEY (`NomeLuogo`);

--
-- Indici per le tabelle `Negozi`
--
ALTER TABLE `Negozi`
  ADD PRIMARY KEY (`NegozioID`);

--
-- Indici per le tabelle `Prenotazioni`
--
ALTER TABLE `Prenotazioni`
  ADD KEY `NomeVet` (`NomeVet`),
  ADD KEY `OwnerID` (`OwnerID`),
  ADD KEY `PetID` (`PetID`),
  ADD KEY `ServizioID` (`ServizioID`);

--
-- Indici per le tabelle `Prestazioni`
--
ALTER TABLE `Prestazioni`
  ADD PRIMARY KEY (`CodPrest`),
  ADD KEY `NomeVet` (`NomeVet`);

--
-- Indici per le tabelle `Prodotti`
--
ALTER TABLE `Prodotti`
  ADD PRIMARY KEY (`ProdottoID`),
  ADD KEY `NegozioID` (`NegozioID`);

--
-- Indici per le tabelle `Proprietario`
--
ALTER TABLE `Proprietario`
  ADD PRIMARY KEY (`OwnerID`);

--
-- Indici per le tabelle `Recensioni`
--
ALTER TABLE `Recensioni`
  ADD KEY `OwnerID` (`OwnerID`),
  ADD KEY `ProdottoID` (`ProdottoID`);

--
-- Indici per le tabelle `Servizi`
--
ALTER TABLE `Servizi`
  ADD PRIMARY KEY (`ServizioID`),
  ADD KEY `servizi_ibfk_1` (`NegozioID`);

--
-- Indici per le tabelle `Veterinario`
--
ALTER TABLE `Veterinario`
  ADD PRIMARY KEY (`NomeVet`);

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `Acquisti`
--
ALTER TABLE `Acquisti`
  ADD CONSTRAINT `acquisti_ibfk_1` FOREIGN KEY (`ProdottoID`) REFERENCES `Prodotti` (`ProdottoID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `acquisti_ibfk_2` FOREIGN KEY (`OwnerID`) REFERENCES `Proprietario` (`OwnerID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `AnimaleDomestico`
--
ALTER TABLE `AnimaleDomestico`
  ADD CONSTRAINT `animaledomestico_ibfk_1` FOREIGN KEY (`OwnerID`) REFERENCES `Proprietario` (`OwnerID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `Eventi`
--
ALTER TABLE `Eventi`
  ADD CONSTRAINT `eventi_ibfk_1` FOREIGN KEY (`NomeLuogo`) REFERENCES `Luoghi` (`NomeLuogo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `Prenotazioni`
--
ALTER TABLE `Prenotazioni`
  ADD CONSTRAINT `prenotazioni_ibfk_1` FOREIGN KEY (`NomeVet`) REFERENCES `Veterinario` (`NomeVet`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `prenotazioni_ibfk_2` FOREIGN KEY (`OwnerID`) REFERENCES `Proprietario` (`OwnerID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `prenotazioni_ibfk_3` FOREIGN KEY (`PetID`) REFERENCES `AnimaleDomestico` (`PetID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `prenotazioni_ibfk_4` FOREIGN KEY (`ServizioID`) REFERENCES `Servizi` (`ServizioID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `Prestazioni`
--
ALTER TABLE `Prestazioni`
  ADD CONSTRAINT `prestazioni_ibfk_1` FOREIGN KEY (`NomeVet`) REFERENCES `Veterinario` (`NomeVet`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `Prodotti`
--
ALTER TABLE `Prodotti`
  ADD CONSTRAINT `prodotti_ibfk_1` FOREIGN KEY (`NegozioID`) REFERENCES `Negozi` (`NegozioID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `Recensioni`
--
ALTER TABLE `Recensioni`
  ADD CONSTRAINT `recensioni_ibfk_1` FOREIGN KEY (`OwnerID`) REFERENCES `Proprietario` (`OwnerID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `recensioni_ibfk_2` FOREIGN KEY (`ProdottoID`) REFERENCES `Prodotti` (`ProdottoID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limiti per la tabella `Servizi`
--
ALTER TABLE `Servizi`
  ADD CONSTRAINT `servizi_ibfk_1` FOREIGN KEY (`NegozioID`) REFERENCES `Negozi` (`NegozioID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
