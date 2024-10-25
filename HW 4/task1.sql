DROP DATABASE IF EXISTS pet_database;
CREATE DATABASE pet_database;
USE pet_database;

 DROP TABLE IF EXISTS petPet, petEvent;

-- Up to the next CUTOFF POINT should be in task1.sql

CREATE TABLE petPet (
  petname VARCHAR(25) NOT NULL,
  owner VARCHAR(45),
  species VARCHAR(45) NOT NULL,
  gender VARCHAR(1) NOT NULL CHECK ( Gender='M' OR Gender='F'),
  birth DATE NOT NULL,
  death DATE,
  PRIMARY KEY (petname)
);

CREATE TABLE petEvent (
  eventNumber INTEGER(5) NOT NULL,
  petname VARCHAR(20) NOT NULL,
  eventdate DATE NOT NULL,
  eventtype VARCHAR(15) NOT NULL,
  remark VARCHAR(255),
  FOREIGN KEY (petname) REFERENCES petPet(petname) ON DELETE CASCADE,
  PRIMARY KEY (eventNumber)
);