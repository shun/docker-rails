FROM ruby:2.5

ARG http_proxy=http://172.28.11.159:3128
ARG https_proxy=http://172.28.11.159:3128

ADD apt.conf /etc/apt/apt.conf

RUN adduser --disabled-login --gecos 'rails' rails
RUN apt update && apt upgrade -y && apt autoremove -y

RUN apt install -y \
        curl \
        vim \
        wget \
        build-essential

RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN apt install -y nodejs

RUN node -v
RUN npm cache clean --force
RUN npm install n -g

RUN n stable
RUN ln -sf /usr/local/bin/node /usr/bin/node

RUN mkdir /pjms
WORKDIR /pjms
ADD ./Gemfile /pjms/Gemfile
RUN touch /pjms/Gemfile.lock

RUN bundle install
