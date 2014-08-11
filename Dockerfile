FROM ubuntu

RUN apt-get -y update
RUN apt-get -y install git
RUN apt-get -y install ruby1.9.3
RUN apt-get -y install build-essential

RUN git clone -b develop git://github.com/nicklegr/entakun.git

WORKDIR entakun
RUN gem install bundler --no-ri --no-rdoc
RUN bundle install --without=test

CMD bundle exec rackup
