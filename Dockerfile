ting a dockerfile for image
#building from mother image
FROM ubuntu:latest 
#in-charge
LABEL maintainer="linda.annang@gmail.com" 
RUN  sudo apt-get -y update && sudo apt-get -y install nginx
#copying the needed files
COPY files/default /etc/nginx/sites-available/default
COPY files/index.html /usr/share/nginx/html/index.html
#exposing port 80 for the web server
EXPOSE 80
#runnin the application
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
#the 'daemon off' directive tells Nginx to stay in the foreground
