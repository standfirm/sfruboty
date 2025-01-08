FROM ruby:2.7.8-alpine3.16

WORKDIR /app

RUN apk update && apk add g++ git make

COPY Gemfile Gemfile.lock /app/

RUN bundle install

COPY . /app

CMD ["bundle", "exec", "ruboty"]
