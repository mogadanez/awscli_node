FROM node:10


RUN apt-get update && apt-get install -y python-pip
RUN pip install awscli
