FROM ubuntu:16.04

ENV RUBY_VERSION=2.3 \
    RAILS_VERSION=5.1.6 \
    RAILS_ENV=production

RUN mkdir /opt/scripts
COPY install.sh /opt/scripts/install.sh

RUN bash /opt/scripts/install.sh

RUN mkdir /app
WORKDIR /app
RUN gem install bundle
RUN gem install rails -v 5.1.6

#RUN mkdir /pjms
#WORKDIR /pjms
#ADD ./Gemfile /pjms/Gemfile
#RUN touch /pjms/Gemfile.lock
#
#RUN bundle install
#ADD ./entrypoint.sh /entrypoint.sh
#RUN chmod a+x /entrypoint.sh
#
