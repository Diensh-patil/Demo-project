FROM centos:latest
RUN yum -y install httpd; yum clean all; systemctl enable httpd.service
RUN wget https://www.free-css.com/assets/files/free-css-templates/download/page282/astro-motion.zip 
WORKDIR /apps
RUN unzip astro-motion.zip
RUN cp -rvf templatemo_560_astro_motion/* .
RUN rm -Rf astro-motion.zip templatemo_560_astro_motion/
CMD ["/usr/sbin/httpd", "-D","FOREGROUND"]
EXPOSE 80
 
