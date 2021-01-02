FROM ubuntu:20.04
MAINTAINER rsj217 <rsj217@gmail.com>

ENV TZ "Asia/Shanghai"

ADD sources.list /etc/apt/sources.list

# Install.
RUN \
  apt-get update && \
  apt-get -y upgrade && \
  apt-get install -y ca-certificates apt-transport-https software-properties-common && \
  apt-get install -y zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev libsqlite3-dev libbz2-dev && \
  apt-get install -y sudo curl net-tools netcat curl git htop unzip vim wget  && \
  apt-get install -y python3 python3-pip python3-dev && \
  rm -rf /var/lib/apt/lists/*

# Add files.
# ADD root/.bashrc /root/.bashrc

# Set environment variables.
ENV HOME /root

# Define working directory.
WORKDIR /root

# expose port
EXPOSE 22
