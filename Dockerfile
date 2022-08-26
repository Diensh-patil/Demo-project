FROM centos:latest
RUN yum install -y httpd \ 
zip \
unzip
RUN wget https://www.free-css.com/assets/files/free-css-templates/download/page282/astro-motion.zip 
WORKDIR /apps
RUN unzip astro-motion.zip
RUN cp -rvf templatemo_560_astro_motion/* .
RUN rm -Rf astro-motion.zip templatemo_560_astro_motion/
CMD ["/usr/sbin/httpd", "-D","FOREGROUND"]
EXPOSE 80
