FROM caltha/protractor

MAINTAINER rrdcostasi@concert.com.br

ENV DEBIAN_FRONTEND noninteractive

# Install Protractor and initialized Webdriver
RUN npm install protractor && \
  webdriver-manager update

