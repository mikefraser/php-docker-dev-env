FROM nginx:latest

# Basic setup
RUN apt-get clean
RUN apt-get update

RUN apt-get install -y \
        git \
        nano

# COPY site.conf /etc/nginx/conf.d/default.conf