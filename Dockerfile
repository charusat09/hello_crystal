FROM crystallang/crystal:latest
ADD . /code/
WORKDIR /code


RUN apt-get update
#RUN apt-get install -y curl
# install RVM, Ruby, and Bundler
#RUN gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB

#RUN \curl -sSL https://get.rvm.io | bash -s stable --ruby
#RUN /bin/bash -l -c "rvm install 2.1"
#RUN /bin/bash -l -c "echo 'gem: --no-ri --no-rdoc' > ~/.gemrc"
#RUN /bin/bash -l -c "gem install bundler --no-ri --no-rdoc"

RUN apt-get install -y -q ruby
