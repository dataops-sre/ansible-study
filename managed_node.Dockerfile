FROM ubuntu:20.04

RUN apt-get update && apt-get install -y openssh-server sudo

RUN echo 'root:root' | chpasswd

RUN echo 'PermitRootLogin yes' > /etc/ssh/sshd_config

RUN service ssh start

EXPOSE 22, 3306

CMD ["/usr/sbin/sshd","-D", "-o", "ListenAddress=0.0.0.0"]