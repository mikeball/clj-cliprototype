FROM openjdk:8-jdk

RUN apt-get update
RUN apt-get install -y zsh git openssh-server tree


# zsh & oh-my-zsh, because how do we live without it?
RUN git clone https://github.com/robbyrussell/oh-my-zsh.git /opt/oh-my-zsh
COPY zshrc /root/.zshrc


RUN mkdir /work
WORKDIR /work


# Entrypoint Setup
COPY entrypoint.sh /opt/entrypoint.sh
RUN chmod +x /opt/entrypoint.sh
ENTRYPOINT /opt/entrypoint.sh


EXPOSE 9090