FROM maven:3.8.3-amazoncorretto-17

WORKDIR /app

COPY src src
COPY pom.xml pom.xml

RUN mvn package

# Instalar o git (yum instal ...)
RUN yum install -y git
# GIt clone .... ai nao precisa do COPY src.. pq ja vai estar aqui
RUN git clone 
# VC vai precisar dar um CD (cd pasta)
RUN mvn package
# Expor a porta 8081 
EXPOSE 8081


CMD [ "java" , "-jar" , "target/apirest-0.0.1-SNAPSHOT.jar"]

