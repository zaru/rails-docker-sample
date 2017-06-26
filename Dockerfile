FROM rails:5

WORKDIR /app
COPY Gemfile ./Gemfile
COPY Gemfile.lock ./Gemfile.lock
RUN bundle install --jobs=4
ADD . .

EXPOSE 9292

ARG RAILS_ENV=production

ENV RAILS_ENV=${RAILS_ENV}

RUN RAILS_ENV=${RAILS_ENV} bundle exec rake assets:precompile
CMD ["rails", "s", "-p", "9292", "-b", "0.0.0.0", "-e", "${RAILS_ENV}"]
