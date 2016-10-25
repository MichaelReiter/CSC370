DROP TABLE Parts;
DROP TABLE Suppliers;
DROP TABLE Catalog;

CREATE TABLE Parts (
  pid integer,
  pname text,
  color text,
  PRIMARY KEY (pid)
);

CREATE TABLE Suppliers (
  sid text,
  sname text,
  address text,
  PRIMARY KEY (sid)
);

CREATE TABLE Catalog (
  sid text,
  pid integer,
  price float,
  PRIMARY KEY (sid, pid)
);

INSERT INTO Parts VALUES (6, 'Anti-Gravity Turbine Generator', 'Cyan');
INSERT INTO Parts VALUES (7, 'Anti-Gravity Turbine Generator', 'Magenta');
INSERT INTO Parts VALUES (8, 'Fire Hydrant Cap', 'Red');
INSERT INTO Parts VALUES (9, '7 Segment Display', 'Green');
INSERT INTO Parts VALUES (10, 'SQL Queries', 'Green');

INSERT INTO Suppliers VALUES ('amazon', 'Amazon Canada', '61801');
INSERT INTO Suppliers VALUES ('walmart', 'Walmart Inc', '90305');
INSERT INTO Suppliers VALUES ('rim', 'Research in Motion', '31299');
INSERT INTO Suppliers VALUES ('google', 'Google Inc', '51902');

INSERT INTO Catalog VALUES ('amazon', 8, 11.7);
INSERT INTO Catalog VALUES ('walmart', 8, 7.95);
INSERT INTO Catalog VALUES ('rim', 8, 12.5);
INSERT INTO Catalog VALUES ('rim', 9, 1);
INSERT INTO Catalog VALUES ('amazon', 10, 10.5);
INSERT INTO Catalog VALUES ('amazon', 9, NULL);
