FROM crystallang/crystal:latest
ADD . /code/
WORKDIR /code
RUN apt-get update
RUN apt-get install -y -q ruby
