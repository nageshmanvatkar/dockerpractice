FROM centos: latest
MAINTAINER nagesh88131@gmaill.com
RUN yum install -y httpd\
zip\
unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page277/cads.zip /var/www/html/ 
WORKDir /var/www/html
RUN unzip cads.zip
RUN cp -rvf markups-cads/* .
RUN rm -rf _MACOSX markups-cads cads.zip
CMD [ "/usr/sbin/httpd", "-D", "FOREGROUND" ]
EXPOSE 80
