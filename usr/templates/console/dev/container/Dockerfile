FROM openjdk:8-jdk

# update and install necessary
RUN apt-get update
RUN apt-get install -y zsh git openssh-server tree


# zsh & oh-my-zsh, because how do we live without it...
RUN git clone https://github.com/robbyrussell/oh-my-zsh.git /opt/oh-my-zsh
COPY zshrc /root/.zshrc


# create working directory
RUN mkdir /work
WORKDIR /work


# entrypoint Setup
COPY entrypoint.sh /opt/entrypoint.sh
RUN chmod +x /opt/entrypoint.sh
# ENTRYPOINT /opt/entrypoint.sh


# install clojure tools
ENV LEIN_ROOT=1
RUN cd /usr/local/bin/ && wget https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein && chmod +x ./lein
RUN lein


# expose repl port
EXPOSE 9090