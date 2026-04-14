DROP TABLE if exists avgGEWA;-- Tabelle für DJs
DROP TABLE IF EXISTS DJs1;
DROP TABLE IF EXISTS DJ_Days;
DROP TABLE IF EXISTS GEWA;



CREATE TABLE GEWA (
	LAPTOP VARCHAR(45),
	PERIPHERIE VARCHAR(45)
);


CREATE TABLE DJs1 (
    dj_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    contact_info VARCHAR(255)
);

-- Tabelle für Auflegtage pro DJ
CREATE TABLE DJ_Days (
    dj_id INT,
    day_of_week VARCHAR(20) NOT NULL,
    FOREIGN KEY (dj_id) REFERENCES DJs(dj_id)
);

-- Füge DJ DayDay zur DJs-Tabelle hinzu
INSERT INTO DJs1 (dj_id, name, contact_info)
VALUES (1, 'DayDay', 'Kein direkter Kontakt');

-- Füge die Auflegtage für DJ DayDay in die DJ_Days-Tabelle ein
INSERT INTO DJ_Days (dj_id, day_of_week) VALUES (1, 'Donnerstag');
INSERT INTO DJ_Days (dj_id, day_of_week) VALUES (1, 'Freitag');
INSERT INTO DJ_Days (dj_id, day_of_week) VALUES (1, 'Samstag');
CREATE TABLE avgGEWA (
LAPTOP VARCHAR(255),
PERIPHERIE VARCHAR(25)
);

INSERT INTO GEWA(LAPTOP, PERIPHERIE) VALUES ("MICROSOFTSURFACEBOOK", "APPLEMOUSE");
SELECT * FROM GEWA;