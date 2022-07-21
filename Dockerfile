FROM ubuntu:latest AS base
WORKDIR /usr/local/bin
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y sudo  software-properties-common curl git build-essential && \
    apt-add-repository -y ppa:ansible/ansible && \
    apt-get update && \
    apt-get install -y curl git ansible build-essential && \
    apt-get clean autoclean && \
    apt-get autoremove --yes

FROM base AS oetzi
RUN adduser --disabled-password --gecos '' oezguer
RUN adduser oezguer sudo
RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
USER oezguer
WORKDIR /home/oezguer

FROM oetzi
COPY . .
CMD ["sh", "-c", "ansible-playbook playbook.yml"]
