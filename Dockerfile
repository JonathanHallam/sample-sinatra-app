FROM jenkins/jnlp-slave

ARG user=jenkins

# install ruby

USER root

RUN apt update

RUN apt install -y ruby

RUN gem install -y ast -v '2.4.0'

RUN apt install -y bundler

USER ${user}
