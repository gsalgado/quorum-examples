FROM ubuntu:16.04

RUN apt-get update && apt-get install -y software-properties-common wget git
RUN useradd --create-home --home-dir /home/ubuntu ubuntu
RUN adduser ubuntu sudo
WORKDIR /home/ubuntu

# This is because bootstrap.sh expects a /vagrant dir
COPY . /vagrant
RUN /vagrant/vagrant/bootstrap.sh

USER ubuntu

EXPOSE 22000 22001 22002 22003 22004 22005 22006

CMD ["bash"]
