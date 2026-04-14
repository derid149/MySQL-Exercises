-- Erstellung der Datenbankstruktur für Technik & Vermögen - Wertversprechen ohne AUTO_INCREMENT

-- Tabelle für Kosten
CREATE TABLE Kosten (
    id INT PRIMARY KEY,
    beschreibung VARCHAR(255) NOT NULL,
    betrag DECIMAL(10, 2),
    modell VARCHAR(255) -- z.B. Abo-Dienst, Einmalzahlung, etc.
);

-- Beispiel-Daten für die Tabelle Kosten
INSERT INTO Kosten (id, beschreibung, betrag, modell) 
VALUES 
(1, 'Niedrige Betriebskosten durch Automatisierung', 5000.00, 'Einmalige Investition'),
(2, 'Flexibles Preismodell', NULL, 'Abo-Dienst'),
(3, 'Transparente Kostenstruktur', NULL, 'Abo-Modell');

-- Tabelle für Eigenschaften
CREATE TABLE Eigenschaften (
    id INT PRIMARY KEY,
    beschreibung VARCHAR(255) NOT NULL
);

-- Beispiel-Daten für die Tabelle Eigenschaften
INSERT INTO Eigenschaften (id, beschreibung) 
VALUES 
(1, 'Benutzerfreundliche Oberfläche'),
(2, 'Hohe Sicherheitsstandards'),
(3, 'Mobile Verfügbarkeit'),
(4, 'Nahtlose Integration in bestehende Systeme');

-- Tabelle für Ausgaben
CREATE TABLE Ausgaben (
    id INT PRIMARY KEY,
    beschreibung VARCHAR(255) NOT NULL,
    einsparung DECIMAL(10, 2) -- Mögliche Einsparungen
);

-- Beispiel-Daten für die Tabelle Ausgaben
INSERT INTO Ausgaben (id, beschreibung, einsparung) 
VALUES 
(1, 'Vermeidung von Ausfallzeiten', 1000.00),
(2, 'Prozessoptimierung und Reduzierung manueller Arbeitsschritte', 2000.00);

-- Tabelle für Nutzen
CREATE TABLE Nutzen (
    id INT PRIMARY KEY,
    beschreibung VARCHAR(255) NOT NULL
);

-- Beispiel-Daten für die Tabelle Nutzen
INSERT INTO Nutzen (id, beschreibung) 
VALUES 
(1, 'Höhere Effizienz durch Automatisierung'),
(2, 'Verbesserte Skalierbarkeit'),
(3, 'Zeitersparnis durch schnelle Problemlösungen');

-- Tabelle für Mehrwert
CREATE TABLE Mehrwert (
    id INT PRIMARY KEY,
    beschreibung VARCHAR(255) NOT NULL
);

-- Beispiel-Daten für die Tabelle Mehrwert
INSERT INTO Mehrwert (id, beschreibung) 
VALUES 
(1, 'Zugang zu exklusiven Funktionen'),
(2, 'Personalisierte IT-Lösungen'),
(3, 'Kontinuierliche Innovation und Weiterentwicklung');

-- Tabelle für Produktion
CREATE TABLE Produktion (
    id INT PRIMARY KEY,
    beschreibung VARCHAR(255) NOT NULL
);

-- Beispiel-Daten für die Tabelle Produktion
INSERT INTO Produktion (id, beschreibung) 
VALUES 
(1, 'Hochqualitative technische Infrastrukturen'),
(2, 'Nachhaltige Produktionsprozesse'),
(3, 'Schnelle Bereitstellung und Implementierung');

-- Abfrage, um alle Daten zu einem bestimmten Wertversprechen abzurufen
SELECT 
    k.beschreibung AS 'Kosten',
    e.beschreibung AS 'Eigenschaften',
    a.beschreibung AS 'Ausgaben',
    n.beschreibung AS 'Nutzen',
    m.beschreibung AS 'Mehrwert',
    p.beschreibung AS 'Produktion'
FROM Kosten k
JOIN Eigenschaften e ON e.id = k.id
JOIN Ausgaben a ON a.id = k.id
JOIN Nutzen n ON n.id = k.id
JOIN Mehrwert m ON m.id = k.id
JOIN Produktion p ON p.id = k.id;