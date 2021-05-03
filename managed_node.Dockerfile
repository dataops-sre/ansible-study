FROM ubuntu:xenial

RUN apt-get update && apt-get install -y openssh-server sudo

RUN echo 'root:root' | chpasswd

RUN sed -ri 's/PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config

RUN service ssh start

EXPOSE 22

CMD ["/usr/sbin/sshd","-D", "-o", "ListenAddress=0.0.0.0"]