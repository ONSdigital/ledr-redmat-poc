# ledr-redmat-poc


In order to run these applications you need to perform the following steps:

**NOTE** These instructions assume you're in the ledr-redmat-poc

1. Sign into git locally  https://help.github.com/articles/setting-your-username-in-git/

2. Download and install Docker https://docs.docker.com/docker-for-mac/install/

3. Clone the Oracle Docker repo:

        git clone https://github.com/oracle/docker-images.git

4. Download the Oracle Database 12c Release 1 Linux files 1 & 2 from

        http://www.oracle.com/technetwork/database/enterprise-edition/downloads/index.html

   into this directory (Remember to tell Safari not to unzip automatically, press "cmd + ," and uncheck "Open safe files after downloading"


5. run
        ./scripts/createDB.sh

6. run
        ./scripts/pySetup.sh


To run the java app:

	mvn clean install

	mvn spring-boot:run


To run the python UI (from ledr-redmat-ui-poc):

	python main.py
