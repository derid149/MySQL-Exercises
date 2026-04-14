# MySQL Exercises – Datenbankdesign & Formulareingabe

Ein praxisorientiertes Datenbankprojekt, das den vollständigen Workflow vom Datenbankdesign bis zur strukturierten Dateneingabe abbildet. Die Datenbank wird einmalig per SQL-Skript aufgebaut – danach erfolgt die gesamte Dateneingabe über eine formularbasierte Oberfläche, ohne dass der Benutzer manuell SQL schreiben muss.

-----

## Technologien

- MySQL (Datenbankdesign, Tabellenstruktur, Beziehungen)
- SQL (DDL: CREATE, Primärschlüssel, Fremdschlüssel, Constraints)
- phpMyAdmin (Verwaltungsoberfläche, Strukturkontrolle, Import/Export)
- SQLite (mobile Konfiguration und Testumgebung auf iPad)

-----

## Projektaufbau

Das Projekt besteht aus zwei klar getrennten Schichten:

**Schicht 1 – Datenbankstruktur (einmalig per SQL)**
Die gesamte Datenbankstruktur wird durch ein SQL-Skript erstellt. Dazu gehören alle Tabellen, Primärschlüssel, Fremdschlüssel und Beziehungen zwischen den Entitäten. Dieser Schritt erfordert technisches Wissen über Datenmodellierung und wird nur einmal ausgeführt.

**Schicht 2 – Dateneingabe via Formular**
Nach dem Aufbau der Struktur erfolgt die gesamte Dateneingabe über eine formularbasierte Oberfläche – vergleichbar mit einem klassischen Eingabeformular. Der Benutzer füllt die Felder aus und sendet ab, ohne selbst SQL zu schreiben. Die Daten werden direkt in die entsprechenden Tabellen geschrieben.

-----

## Datenbankstruktur

Die Datenbank umfasst Tabellen aus verschiedenen realen Anwendungsdomänen, darunter:

- Restaurant- und Bestellverwaltung
- Parkplatzverwaltung
- Produktionsdaten
- Kundenverwaltung (Mobilezone-Beispieldaten)
- Fahrzeugdaten

Jede Tabelle ist nach den Regeln der dritten Normalform (3NF) aufgebaut, um Redundanzen zu vermeiden und die Datenintegrität sicherzustellen.

-----

## Entwicklungsprozess

**Schritt 1 – Anforderungsanalyse und Datenmodellierung**
Für jede Domäne wurden zuerst die Entitäten und ihre Beziehungen analysiert. Dabei wurde bestimmt, welche Attribute in eigene Tabellen ausgelagert werden müssen und welche Fremdschlüsselbeziehungen benötigt werden.

**Schritt 2 – Erstellung der Datenbankstruktur mit SQL**
Die Tabellen wurden mit `CREATE TABLE`-Statements in MySQL erstellt. Primärschlüssel, Fremdschlüssel und Constraints wurden direkt im SQL-Skript definiert, um die Datenintegrität auf Datenbankebene sicherzustellen.

**Schritt 3 – Verwaltung und Kontrolle mit phpMyAdmin**
phpMyAdmin wurde als grafische Oberfläche eingesetzt, um die erstellte Struktur zu überprüfen, Beziehungen zu visualisieren und bei Bedarf Anpassungen vorzunehmen. Die Import- und Export-Funktion von phpMyAdmin wurde für die Sicherung der Datenbankstruktur genutzt.

**Schritt 4 – Mobile Konfiguration mit SQLite auf iPad**
Die Datenbankstruktur wurde zusätzlich in einer SQLite-Umgebung auf dem iPad konfiguriert. Dieser Schritt ermöglichte es, die Portabilität des Datenbankschemas zu testen und SQL-Konzepte unabhängig von einer festen Serverumgebung anzuwenden.

-----

## Wichtigste Lernziele

Durch dieses Projekt wurden folgende Konzepte praktisch erarbeitet und gefestigt:

- Relationale Datenmodellierung für reale Geschäftsprozesse
- Aufbau von Datenbankstrukturen mit DDL (Data Definition Language)
- Verständnis von Primärschlüsseln, Fremdschlüsseln und referenzieller Integrität
- Normalisierung bis zur dritten Normalform (3NF)
- Einsatz von phpMyAdmin als professionelle Verwaltungsoberfläche
- Grundlagen von SQLite als leichtgewichtige, portable Datenbanklösung

-----

## Lokale Ausführung

```sql
-- Schritt 1: Datenbank erstellen
CREATE DATABASE mysql_exercises;
USE mysql_exercises;

-- Schritt 2: SQL-Skript ausführen
-- setup.sql in phpMyAdmin importieren oder direkt ausführen

-- Schritt 3: Dateneingabe via Formularoberfläche starten
```

Voraussetzungen: MySQL Server (lokal oder via XAMPP/MAMP), phpMyAdmin, oder SQLite für die mobile Variante.

-----

## Autor

**Dejan Kovacevic**  
ICT Support & Systems | SIZ | Homelab & Scripting Enthusiast  
[LinkedIn](https://linkedin.com/in/dejan-kovacevic-2226191b0)
