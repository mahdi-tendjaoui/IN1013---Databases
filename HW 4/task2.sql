INSERT INTO petPet VALUES
("Hammy", "Diane", "hamster", "M","2010-10-30", NULL);

INSERT INTO petEvent VALUES
(12,"Fluffy", "2020-10-15", "vet", "antibiotics"),
(13,"Hammy", "2020-10-15", "vet", "antibiotics");

UPDATE petEvent SET remark="5 kittens, 3 female, 2 male"  WHERE eventNumber=1;
UPDATE petEvent SET petname="Claws"  WHERE eventNumber=5;
UPDATE petPet SET death="2020-09-01" WHERE petname="Puffball";
DELETE FROM petPet WHERE petname="Buffy";