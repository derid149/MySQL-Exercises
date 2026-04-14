DROP TABLE Einkommen;
DROP TABLE Ausgaben;
DROP TABLE Produkte;

-- 1. Erstellen der Tabellenstruktur
CREATE TABLE Einkommen (
    id INTEGER PRIMARY KEY,
    betrag DECIMAL(10, 2) NOT NULL,
    datum DATE NOT NULL
);

CREATE TABLE Ausgaben (
    id INTEGER PRIMARY KEY,
    beschreibung VARCHAR(255) NOT NULL,
    betrag DECIMAL(10, 2) NOT NULL,
    datum DATE NOT NULL,
    kategorie VARCHAR(50) NOT NULL
);

CREATE TABLE Produkte (
    id INTEGER PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    preis DECIMAL(10, 2) NOT NULL,
    kategorie VARCHAR(50) NOT NULL
);

-- 2. Einfügen des Einkommens
INSERT INTO Einkommen (id, betrag, datum) VALUES (1, 1000.00, CURRENT_DATE);

-- 3. Einfügen der Ausgaben
-- Hotelbuchung
INSERT INTO Ausgaben (id, beschreibung, betrag, datum, kategorie) 
VALUES (1, 'Hotel in Istanbul (5 Tage)', 500.00, CURRENT_DATE, 'Reise');

-- Mixer und Gestell
INSERT INTO Produkte (id, name, preis, kategorie) VALUES 
(1, 'Pioneer DJM Mixer', 1200.00, 'Elektronik'),
(2, 'Gestell für Mixer', 300.00, 'Möbel');

-- 4. Berechnung des verbleibenden Einkommens
SELECT 
    (SELECT betrag FROM Einkommen WHERE id = 1) - 
    (SELECT SUM(betrag) FROM Ausgaben) AS verbleibendes_Einkommen;