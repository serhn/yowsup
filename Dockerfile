FROM ubuntu:18.04
RUN apt-get update -y && apt-get install -y python python-pip git
RUN pip install python-dateutil protobuf pycrypto python-axolotl-curve25519
RUN git clone https://github.com/tgalal/yowsup.git
RUN sed -i 's/_MD5_CLASSES = "[^"]*"/_MD5_CLASSES = "YlajJPPGUUP1Ptcic2XKNA=="/g' /yowsup/yowsup/env/env_android.py
RUN sed -i 's/_VERSION = "[^"]*"/_VERSION = "2.18.105"/g' /yowsup/yowsup/env/env_android.py
RUN cd yowsup && python setup.py install
