FROM ubuntu:14.04
MAINTAINER Ray <shilei@magicmoma.com>

#COPY sources.list /etc/apt/

ENV LANG=C.UTF-8

# add scrapy sources
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 627220E7 && \
        echo 'deb http://archive.scrapy.org/ubuntu scrapy main' | sudo tee /etc/apt/sources.list.d/scrapy.list && \
        apt-get update --fix-missing

# install python and scrapy
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y git python python-pip python-dev build-essential libxml2-dev libxslt-dev libffi-dev libssl-dev libmysqlclient-dev libjpeg8 libjpeg62-dev libfreetype6 libfreetype6-dev mailutils ssmtp && \
        apt-get install -y --reinstall cron && \
        pip install --upgrade pip && pip install --upgrade virtualenv && \ 
        pip install lxml && pip install pyopenssl && pip install Scrapy && pip install --upgrade scrapy && \
        pip install --upgrade twisted && \
        pip install MySQL-python && \
        pip install service-identity && \
        pip install pyasn1 --upgrade && \
        pip install unidecode && \
        pip install python-slugify && \
        pip install tldextract && \
        pip install python-dateutil && \
        pip install pillow==2.9.0 && \
        pip install python-resize-image && \
        apt-get install -y opencc && pip install opencc && \
        pip install future && \
        pip install jieba && \
        pip install git+https://github.com/seomoz/simhash-py.git && \

        pip install imagehash && \
        apt-get install php5 && apt-get install php5-mysql