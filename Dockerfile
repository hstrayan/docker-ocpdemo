FROM openjdk:11
ENV GREETING ''
ADD /target/docker-helm-ocpdemo-0.0.1-SNAPSHOT.jar docker-helm-ocpdemo-0.0.1-SNAPSHOT.jar
EXPOSE 8080
CMD java -Ddw.messageGreeting=${GREETING} -jar docker-helm-ocpdemo-0.0.1-SNAPSHOT.jar
VOLUME /tmp