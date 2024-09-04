FROM maven:3.8.3-amazoncorretto-17

WORKDIR /app

COPY src src
COPY pom.xml pom.xml

RUN mvn package

RUN apt-get install -y git

RUN git clone https://github.com/Caac1984/api-springboot-main.git .

RUN mvn package

EXPOSE 8081

CMD [ "java" , "-jar" , "target/apirest-0.0.1-SNAPSHOT.jar"]

