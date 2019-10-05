FROM ubuntu:16.04

ENV CPLUS_INCLUDE_PATH /usr/include/gdal
ENV C_INCLUDE_PATH /usr/include/gdal

WORKDIR /base

RUN apt-get update
RUN apt-get install -y software-properties-common
RUN add-apt-repository ppa:jonathonf/python-3.6
RUN apt-get update
RUN apt-get install -y build-essential python3.6 python3.6-dev python3-pip python3.6-venv

RUN add-apt-repository ppa:ubuntugis/ppa
RUN apt-get update
RUN apt-get install -y gdal-bin
RUN apt-get install -y libgdal-dev
RUN apt-get install -y python-gdal 
RUN apt-get install -y python3-gdal

RUN pip3 install --upgrade pip
RUN pip3 install GDAL

CMD ["/bin/bash"]