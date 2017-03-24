FROM ubuntu:latest

//***MongoDB***///

MAINTAINER Rishi "rishipdp@gmail.com"

//Install GPG key
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927

//install mongodb 3.0.1 and updating the source containers
RUN apt-get update && apt-get install -y mongodb-org=3.0.1 mongodb-org-server=3.0.1 mongodb-org-shell=3.0.1 mongodb-org-mongos=3.0.1 mongodb-org-tools=3.0.1

//Creating Directory for Mongodb data
RUN mkdir -p /data/db

//Specifying the port
EXPOSE 27017

//Entry point for docker application
ENTRYPOINT "/usr/bin/momgodb"

//***Python***//

//Install and update pip and python
RUN apt-get update && apt-get install -y python-pip python2.7

//Remove unnecessary requirements
RUN apt-get auto-remove && apt-get clean

//installing versions of pip and virtual environment required for python
RUN pip install -U "pip==1.5.4"
RUN pip install -U "virtualenv==1.11.4"


CMD []

//Entry point for docker application
ENTRYPOINT ["/usr/bin/python2.7"]


//**Tomcat**//
FROM tomcat:7-jre7

ADD settings.xml /usr/local/tomcat/conf/
ADD tomcatUsers.xml /usr/local/tomcat/conf/
