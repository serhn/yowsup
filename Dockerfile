FROM ubuntu:18.04
RUN apt-get update -y && apt-get install -y python python-pip git
#RUN apt-get update -y && apt-get install -y curl unzip python python-pip 
RUN pip install python-dateutil protobuf pycrypto python-axolotl-curve25519
RUN git clone https://github.com/tgalal/yowsup.git
RUN cd yowsup
#env_android.py
#_MD5_CLASSES = "YlajJPPGUUP1Ptcic2XKNA=="
#_VERSION = "2.18.105"
RUN python setup.py install
#python-setuptools python-dateutil
#python-pip gcc
#RUN pip install yowsup2
#RUN ln -fs /usr/share/zoneinfo/US/Pacific-New /etc/localtime && dpkg-reconfigure -f noninteractive tzdata
#/usr/local/lib/python2.7/dist-packages/yowsup2-2.5.7-py2.7.egg/yowsup/env/env.py
#

#    Line:
#    DEFAULT = "s40"
#    For:
#    DEFAULT = "android"

#    Modify the file yowsup / env / env_android.py
#    _MD5_CLASSES = "1naz8gL5pIYWbtaOZ3207g=="
#    _VERSION = "2.17.16"

#RUN curl -L https://github.com/tgalal/yowsup/archive/master.zip -o /tmp/master.zip
#RUN unzip -uo /tmp/master.zip -d /usr/share/
#RUN rm /tmp/master.zip
#RUN cd /usr/share/yowsup-master/

