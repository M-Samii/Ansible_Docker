FROM ubuntu

RUN apt update && apt install -y ssh sudo 

RUN adduser iti

RUN echo "iti:123" | chpasswd

RUN usermod -aG sudo iti

ENTRYPOINT service ssh start && bash

#172.17.0.2
#172.17.0.3
#docker build -f Dockerfile -t target .
#docker build -f Dockerfile.c -t centoss .
#docker container run -itd centoss
#docker container run -itd target
#ssh-copy-id -i ~/home/msamy/.ssh/pkey.pub iti@172.17.0.2