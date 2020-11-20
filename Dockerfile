FROM caltha/protractor

MAINTAINER rrdcostasi@concert.com.br

ENV DEBIAN_FRONTEND noninteractive

RUN wget -q -O – https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add – &&\
sh -c ‘echo “deb http://dl.google.com/linux/chrome/deb/ stable main” >> /etc/apt/sources.list.d/google.list’ &&\
apt-get update &&\
apt-get install google-chrome-stable

# Install Protractor and initialized Webdriver
RUN npm install protractor && \
  webdriver-manager update
