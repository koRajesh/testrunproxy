FROM ubuntu:16.04
WORKDIR /usr/src/app
RUN apt-get update && \
      apt-get -y install sudo
RUN sudo apt-get -y install snapd      
RUN sudo snap install docker
COPY . .
CMD ["bash","honey.sh"]
