FROM openjdk:8

WORKDIR /home/hello-world

COPY Helloworld.java /home/hello-world

#Run apk add update

#Run apk add javac

#Run apk add openjdk8

ENV JAVA_HOME /usr/lib/jvm/java-1.8.0-openjdk-amd64

ENV PATH $PATH:$JAVA_HOME/bin

RUN javac Helloworld.java

ENTRYPOINT java Helloworld
