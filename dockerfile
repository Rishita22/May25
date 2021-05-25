FROM httpd:latest
RUN rm -rf /usr/local/apache2/htdocs/index.html
RUN apt update -y
RUN apt install wget -y
RUN wget https://www.free-css.com/assets/files/free-css-templates/download/page267/real-dynamic.zip
RUN apt install unzip -y
RUN unzip real-dynamic.zip
RUN rm -rf real-dynamic.zip
RUN mv templatemo_547_real_dynamic/* /usr/local/apache2/htdocs
CMD httpd-foreground
