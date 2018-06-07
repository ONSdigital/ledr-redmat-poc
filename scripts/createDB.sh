#! /bin/bash

mv docker-images/OracleDatabase/ ../

rm -rf docker-images

mv linuxamd64_12102_database_se2_1of2.zip ../OracleDatabase/SingleInstance/dockerfiles/12.1.0.2/

mv linuxamd64_12102_database_se2_2of2.zip ../OracleDatabase/SingleInstance/dockerfiles/12.1.0.2/

cd ../OracleDatabase/SingleInstance/dockerfiles

./buildDockerImage.sh -v 12.1.0.2 -s

docker run -d --name database -p 1521:1521 -p 5500:5500 -e ORACLE_PWD=ledr oracle/database:12.1.0.2-se2

cd ../../../ledr-redmat-poc/SQL

docker cp Test\ Data.sql database:/testData.sql

docker cp ReDMaT\ Generated.SQL database:/dbScript.sql

docker cp userSetUp.sql database:/userSetUp.sql

docker exec database ./setPassword.sh ledr

docker exec database sqlplus sys/ledr@//localhost:1521/ORCLCDB as sysdba @/userSetUp.sql

cd ../

