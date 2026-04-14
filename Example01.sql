Drop table if exists säntispark;
Drop table if exists ipad_pro;

CREATE TABLE säntispark (
    id INT NOT NULL PRIMARY KEY,
    name VARCHAR(255),
    description VARCHAR(255)
);

CREATE TABLE ipad_pro (
    id INT NOT NULL PRIMARY KEY,
    name VARCHAR(255),
    description VARCHAR(255)
);

-- ...und so weiter für alle Tabellen