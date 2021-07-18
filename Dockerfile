# Compile our java files in this container
FROM openjdk:17-slim
WORKDIR /usr/src/cs6310/
COPY helloworld.jar /usr/src/cs6310/
COPY mysql-connector-java-8.0.25.jar /usr/src/cs6310
CMD ["java","-cp","helloworld.jar:mysql-connector-java-8.0.25.jar","HelloWorld"]




