FROM node:14


RUN apt-get update && apt-get -yq upgrade && \
    apt-get install make automake g++ && \
    apt-get install -y jq wget libpoppler-glib-dev poppler-utils libwxgtk3.0-dev python-pip zip && \
    pip install awscli

RUN wget -q -O v0.5.zip https://github.com/vslavik/diff-pdf/archive/v0.5.zip && unzip v0.5.zip && \
    cd diff-pdf-0.5 && \
    ./bootstrap && ./configure && make && make install && \
    cd ..
