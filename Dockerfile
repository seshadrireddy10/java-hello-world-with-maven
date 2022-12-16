FROM anapsix/alpine-java
MAINTAINER devops
COPY target/jb-hello-world-maven-0.2.0.jar jb-hello-world-maven-0.2.0.jar 
CMD [ "java","-jar","jb-hello-world-maven-0.2.0.jar"]
