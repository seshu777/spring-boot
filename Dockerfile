From openjdk:8
From maven
WORKDIR /target
COPY . /target
RUN mvn clean install package -DskipTests
ADD ./target/employee-jdbc-0.0.1-SNAPSHOT.jar employee-jdbc-0.0.1-SNAPSHOT.jar
CMD ["java","-jar","employee-jdbc-0.0.1-SNAPSHOT.jar"]
