FROM httpd:2.4

COPY ./httpd.conf conf/httpd.conf
COPY ./biotermhub/ termhub

RUN apt-get update 
RUN apt-get install -y nano \
                       python3 \
                       python3-pip \
                       git \
                       libxml2-dev \
                       libxslt-dev \
                       lib32z1-dev

RUN pip3 install lxml
RUN chmod -R 755 termhub

# SED can use different delimiters
RUN sed -i "s|/mnt/system/services/httpd/scratch/ontogene/biotermhub|/usr/local/apache2/termhub_scratch/|g" termhub/core/settings.py

WORKDIR termhub
RUN make

EXPOSE 80