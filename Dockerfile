FROM ubuntu
RUN apt-get update
RUN apt-get install puppet wget git vim -y
RUN mkdir -p /root/.ssh
COPY id_rsa /root/.ssh/
COPY puppet.conf /etc/puppetlabs/puppet/puppet.conf
