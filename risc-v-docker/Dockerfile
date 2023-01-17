FROM ubuntu:20.04
MAINTAINER rsj217 <rsj217@gmail.com>

ENV TZ "Asia/Shanghai"

ADD sources.list /etc/apt/sources.list

# Install.
RUN \
  apt-get update && \
  apt-get -y upgrade && \
  apt-get install -y ca-certificates apt-transport-https software-properties-common && \
  apt-get install -y zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev  && \
  apt-get install -y libreadline-dev libffi-dev libbz2-dev libsqlite3-dev && \
  apt-get install -y autoconf automake autotools-dev build-essential && \
  apt-get install -y sudo bash-completion curl net-tools netcat git htop unzip vim wget tmux dkms  && \
  apt-get install -y gcc-riscv64-linux-gnu gdb-multiarch qemu-user qemu-system-misc && \
  apt-get install -y python3 python3-pip python3-dev perl && \
  rm -rf /var/lib/apt/lists/*

# Set environment variables.
ENV HOME /root

# Define working directory.
WORKDIR /root

# vim config
ADD vimrc /root/.vimrc

# expose port
EXPOSE 22
