use test;
CREATE TABLE `user` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `firstName` VARCHAR(45) NOT NULL,
  `lastName` VARCHAR(45) NULL,
  `age` INT NULL,
  `salary` BIGINT NULL,
  `username` VARCHAR(45) NULL,
  `password` VARCHAR(255) NULL,
  PRIMARY KEY (`id`));
INSERT INTO  user(firstName, lastName , age , salary , username,password )  values("Rama", "Taraka" ,  25 ,  10000 ,  "ramar" ,  "1234");
