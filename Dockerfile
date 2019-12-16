FROM ubuntu

RUN apt-get update && apt-get install -y unzip  && apt-get install -y wget
RUN mkdir /mailslurper \
	&& wget  https://github.com/mailslurper/mailslurper/releases/download/1.14.1/mailslurper-1.14.1-linux.zip -O /mailslurper/mailslurper-temp.zip \
	&& unzip /mailslurper/mailslurper-temp.zip -d /mailslurper \
	&& rm /mailslurper/mailslurper-temp.zip

COPY ./config.json /mailslurper/config.json

EXPOSE 2500/tcp
EXPOSE 8080/tcp
EXPOSE 8085/tcp

WORKDIR /mailslurper

ENTRYPOINT ["/mailslurper/mailslurper"]