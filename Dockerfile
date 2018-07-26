FROM jenkins/jnlp-slave

ARG user=jenkins

# install ruby

USER root

RUN apt update

RUN apt install -y ruby bundler

USER ${user}
