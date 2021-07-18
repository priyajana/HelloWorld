*********************************************************
			HELLOWORLD
*********************************************************

FILES NEEDED:
-------------
helloworld.jar
mysql-connector-java-8.0.25.jar
Dockerfile
docker-compose.yml

STEPS TO FOLLOW:
----------------
> Please install docker and docker compose before proceeding

> Place the above mentioned files in the working directory

> open cli, navigate to that directory

> to build the image 

	 docker-compose build 

> to start the services
	
	 docker-compose up
	 
> to check if containers are ready

	 docker ps
	 
> copy the container ID of the two containers & open 2 new terminal tabs

> to run the application,

	 docker exec -ti <helloworld container id> /bin/bash

	 java -cp helloworld.jar:mysql-connector-java-8.0.25.jar HelloWorld
	
> In the prompt, <Enter name>,<Enter email>
	
> Values entered will be inserted to table HW_USER in HELLOWORLD database created while running the MYSQL container.

> To get the terminal of the MYSQL container,

	 docker exec -it <mysql container id> /bin/bash
	
> To get the MYSQL server terminal and view the databases and tables created,

	 mysql -protocol=tcp -hlocalhost -P3306 -uroot -proot

> To view the sql database and table in the MYSQL server,

	 show databases;
		
	 use HELLOWORLD;
		
   show tables;
		
	 select * from HW_USER;

> Name and email entered in the prompt will be displayed in the table.


