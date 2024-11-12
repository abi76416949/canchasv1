FROM ruby:latest

RUN apt-get update -qq && apt-get install -y nodejs

RUN git config --global user.name "abi76416949"
RUN git config --global user.email "abigail.durand@unas.edu.pe"

WORKDIR /usr/src/app

RUN gem install rails -v 7.0

EXPOSE 3000
