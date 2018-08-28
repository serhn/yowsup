FROM ubuntu:18.04

RUN apt-get update -y && apt-get install -y curl unzip python python-pip \
python-setuptools python-dateutil
#python-pip gcc
RUN pip install yowsup2

#RUN curl -L https://github.com/tgalal/yowsup/archive/master.zip -o /tmp/master.zip
#RUN unzip -uo /tmp/master.zip -d /usr/share/
#RUN rm /tmp/master.zip
#RUN cd /usr/share/yowsup-master/

