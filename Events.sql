-- Tabelle für DJs
CREATE TABLE DJs (
    dj_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    contact_info VARCHAR(255)
);

-- Tabelle für Tracks
CREATE TABLE Tracks (
    track_id INT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    artist VARCHAR(255) NOT NULL,
    length TIME,
    bpm INT
);

-- Tabelle für Playlists
CREATE TABLE Playlists (
    playlist_id INT PRIMARY KEY,
    dj_id INT,
    name VARCHAR(100) NOT NULL,
    date_created DATE,
    FOREIGN KEY (dj_id) REFERENCES DJs(dj_id)
);

-- Verknüpfungstabelle für Playlists und Tracks (Many-to-Many Beziehung)
CREATE TABLE Playlist_Tracks (
    playlist_id INT,
    track_id INT,
    PRIMARY KEY (playlist_id, track_id),
    FOREIGN KEY (playlist_id) REFERENCES Playlists(playlist_id),
    FOREIGN KEY (track_id) REFERENCES Tracks(track_id)
);

-- Tabelle für Events
CREATE TABLE Events (
    event_id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    location VARCHAR(255),
    date DATE,
    dj_id INT,
    FOREIGN KEY (dj_id) REFERENCES DJs(dj_id)
);