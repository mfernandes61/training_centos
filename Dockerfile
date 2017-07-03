FROM consol/centos-xfce-vnc
MAINTAINER Mark Fernandes <mark.fernandes@quadram.ac.uk>

USER root
RUN sed -i 'tsflags=nodocs/d' /etc/yum.conf
RUN rpm --rebuilddb \
	&& yum -y install \
  less \
  && yum -y resinstall man-pages
