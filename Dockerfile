FROM node:10


RUN apt-get update && apt-get install -y jq python-pip zip && pip install awscli
