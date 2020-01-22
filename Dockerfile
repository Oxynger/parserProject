FROM httpd:2.4

RUN apt update 
RUN apt install curl

CMD ["httpd-foreground"]