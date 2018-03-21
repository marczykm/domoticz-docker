FROM ubuntu:latest

EXPOSE 8080

RUN apt-get update && apt-get install -y wget libcurl4-openssl-dev sudo netcat
RUN mkdir /root/domoticz
WORKDIR /root/domoticz
RUN wget https://releases.domoticz.com/releases/release/domoticz_linux_armv7l.tgz
RUN tar xvfz domoticz_linux_armv7l.tgz
RUN rm domoticz_linux_armv7l.tgz
CMD ./domoticz -dbase /root/domoticz.db
