FROM consol/centos-xfce-vnc
MAINTAINER Mark Fernandes <mark.fernandes@quadram.ac.uk>

USER root
RUN yum -y install man
RUN sed -i 'tsflags=nodocs/d' /etc/yum.conf
RUN yum -y resinstall man-pages
