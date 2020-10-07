FROM ubuntu:latest

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y build-essential git cmake libboost-all-dev python3-setuptools python3-psutil python3-numpy python-concurrent.futures python3-opencv
RUN cd /opt && git clone https://github.com/twoletters/MultiNEAT.git
RUN cd /opt/MultiNEAT && export MN_BUILD=boost && cmake . && python3 setup.py build_ext && python3 setup.py install



