FROM ruby:2.2.3
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends apt-utils && apt-get install vim -y apache2 -y libpq-dev -y build-essential -y nodejs libxslt-dev -y libxml2-dev -y zlib1g-dev -y 
RUN mkdir event-scheduler
WORKDIR /event-scheduler
ADD Gemfile /event-scheduler/Gemfile
ADD Gemfile.lock /event-scheduler/Gemfile.lock
RUN gem install rails
RUN gem install bundler
RUN bundle install
ADD . /event-scheduler
CMD RAILS_ENV=it bundle exec rake db:create db:migrate db:seed && rails server -b 0.0.0.0 -p 80