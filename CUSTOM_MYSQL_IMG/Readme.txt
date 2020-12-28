//Reference https://www.youtube.com/watch?v=tBvtCXVmdA8

STEP1:
   create 'Dockerfile' using the below text
----------------------------------------------
From mysql:latest
#add databse test
ENV MYSQL_DATABASE test
#copy the scripts to docker-entrypoint-initdb.d which will be automatically executed during container startup
COPY ./scripts/ docker-entrypoint-initdb.d/
 ----------------------------------------------
 
 STEP2:
 ------------------------
 create create_tbl.sql file under the sub directory 'scripts'
 with below contents
 
 --------------------------
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

 ------------------------
 
 
 STEP 3: CREATE CUSTOM MYSQL IMAGE
 -------------
 build -f Dockerfile -t mycustom_sql_img .
 -----------------------
 
 STEP 4: run the below below docker-compose up
 
