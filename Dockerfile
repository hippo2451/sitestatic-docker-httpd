FROM httpd
LABEL maintaner="hippo245"
EXPOSE 80
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y  git
RUN rm -rf /usr/local/apache2/htdocs/*
RUN git clone https://github.com/hippo2451/static-website-example.git /usr/local/apache2/htdocs/
