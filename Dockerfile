FROM ubuntu

RUN echo "Asia/Tokyo" > /etc/timezone
RUN dpkg-reconfigure -f noninteractive tzdata

RUN apt-get -y update
RUN apt-get -y install git
RUN apt-get -y install ruby1.9.3
RUN apt-get -y install build-essential

RUN git clone https://github.com/nicklegr/entakun.git

WORKDIR entakun
RUN gem install bundler --no-ri --no-rdoc
RUN bundle install --without=test

EXPOSE 80

CMD bundle exec rackup -p 80
