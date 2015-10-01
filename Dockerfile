FROM ubuntu:14.04
MAINTAINER Stijn Opheide <stijn@panenka76.com>
ENV DEBIAN_FRONTEND noninteractive
ENV THUMBOR_VERSION 5.0.6

RUN apt-get update && \
    apt-get install -y python python-dev python-opencv python-pip python-pycurl \
    libdc1394-22 libdc1394-22-dev libjpeg-dev \
    libpng12-dev libtiff4-dev libjasper-dev \
    libjpeg-turbo-progs && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN pip install redis thumbor==$THUMBOR_VERSION

# List all the configuration options of thumbor
RUN thumbor-config | grep "^#.*\ =" | sed 's/^#\(.*\) =.*/^\1=/' > /opt/thumbor-options.conf

COPY start.sh /opt/start.sh

EXPOSE 8888

CMD ["/opt/start.sh"]
