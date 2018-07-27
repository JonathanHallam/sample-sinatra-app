FROM jenkins/jnlp-slave

ARG user=jenkins

# install ruby

USER root

RUN apt update
RUN apt install -y ruby
RUN apt install -y ruby-dev
RUN gem install ast -v '2.4.0'
RUN apt install -y bundler

# Bundler running dependancies
RUN gem install jaro_winkler -v '1.5.1'
RUN gem install mustermann -v '1.0.2'
RUN gem install parallel -v '1.12.1'
RUN gem install powerpack -v '0.1.2'
RUN gem install rack -v '2.0.5'
RUN gem install rainbow -v '3.0.0'
RUN gem install ruby-progressbar -v '1.9.0'
RUN gem install unicode-display_width -v '1.4.0'
RUN gem install tilt -v '2.0.8'
RUN gem install parser -v '2.5.1.2'
RUN gem install rack-protection -v '2.0.3'
RUN gem install rubocop -v '0.58.2'
RUN gem install sinatra -v '2.0.3'

USER ${user}
