DROP TABLE IF EXISTS crowdfunding;
DROP TABLE IF EXISTS farbe;


CREATE TABLE crowdfunding (
  id INT PRIMARY KEY,
  project_name VARCHAR(255),
  description TEXT,
  goal DECIMAL(10, 2),
  start_date DATE,
  end_date DATE
);

CREATE TABLE farbe (
  car VARCHAR(50),
  vw VARCHAR(50),
  golf VARCHAR(50),
  engine VARCHAR(50)
);

SELECT * FROM crowdfunding;