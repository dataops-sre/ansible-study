FROM diodonfrost/ansible-ubuntu:20.04

RUN apt-get update && apt-get install -y sshpass
