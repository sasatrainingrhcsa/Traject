FROM centos:centos7.9.2009

##lets update
RUN yum update -y

##lWho is installing
USER root

##Add users
RUN groupadd sasagroup && useradd -m sasa && usermod -a -G sasagroup sasa
RUN mkdir /apps/mydir -p
RUN chown -R sasa:sasa /apps/

##Switch user voor
USER sasa

##Make a dir
RUN mkdir /apps/mydir/1/{2,jan,piet/test{1..3}} -p
COPY ./source/.bashrc /home/sasa
RUN source /home/sasa/.bashrc

##Switch user voor
USER root

##Do open port
EXPOSE 80

##Where to start
CMD "bin/bash"
