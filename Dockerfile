FROM centos:6
MAINTAINER payo

RUN yum install -y nc
RUN nc -l 127.0.0.1 7002& sleep 1; netstat -nap --inet

