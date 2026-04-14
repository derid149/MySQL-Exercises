DROP TABLE if exists itausrüstung;
DROP TABLE if exists MYLAPTOP;

create table itausrüstung(
webcam varchar(100),
lanKabel varchar(45),
netkabel varchar(50)
);

CREATE TABLE MYLAPTOP(
PRODUCTID CHAR (45) PRIMARY KEY,
HP PAvilion Model dy0600nz VARCHAR(200),
Mainboard hp88ba varchar(45),
DISPLAY CHAR(25)
);

INSERT INTO MYLAPTOP(PRODUCTID) VALUES ("4A6J4EA#UUZ");
INSERT INTO MYLAPTOP(DISPLAY) VALUES ('14');