FROM registry.redhat.io/openjdk/openjdk-11-rhel7
ENV MESSAGE1 ''
ENV MESSAGE2 ''
ADD /target/docker-helm-ocpdemo-0.0.1-SNAPSHOT.jar docker-helm-ocpdemo-0.0.1-SNAPSHOT.jar
EXPOSE 8080
CMD java -Ddw.injectMsg1=${MESSAGE1} -Ddw.injectMsg2=${MESSAGE2} -jar docker-helm-ocpdemo-0.0.1-SNAPSHOT.jar
VOLUME /tmp
