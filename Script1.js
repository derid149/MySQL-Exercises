// #JS script
/**
 * Integration mit SQLite API
 * Autor: Dejan Kovacevic
 * Erstellt am: ${new Date().toISOString()}
 */

const sqlite3 = require('sqlite3').verbose();
const axios = require('axios');

// Datenbank öffnen oder erstellen
const db = new sqlite3.Database('integration.db');

// Tabelle erstellen, wenn nicht vorhanden
db.serialize(() => {
    db.run(`
        CREATE TABLE IF NOT EXISTS api_data (
            id INTEGER PRIMARY KEY,
            name TEXT,
            data TEXT,
            timestamp TEXT
        )
    `);
});

/**
 * Führt API-Abfrage aus und speichert Antwort in SQLite
 */
async function fetchDataAndStore() {
    try {
        const response = await axios.get('https://api.example.com/data'); // URL ersetzen
        const data = JSON.stringify(response.data);
        const timestamp = new Date().toISOString();
        const name = "Dejan Kovacevic";

        db.run(
            `INSERT INTO api_data (name, data, timestamp) VALUES (?, ?, ?)`,
            [name, data, timestamp],
            function (err) {
                if (err) {
                    return console.error('Fehler beim Einfügen:', err.message);
                }
                console.log(`Daten erfolgreich gespeichert mit ID ${this.lastID}`);
            }
        );
    } catch (error) {
        console.error('API Fehler:', error.message);
    }
}

// Skript ausführen
fetchDataAndStore();