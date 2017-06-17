FROM rails:5

WORKDIR /app
COPY Gemfile ./Gemfile
COPY Gemfile.lock ./Gemfile.lock
RUN bundle install --jobs=4
ADD . .

EXPOSE 9292

ARG RAILS_ENV=development
ARG SECRET_KEY_BASE

ENV RAILS_ENV=${RAILS_ENV} SECRET_KEY_BASE=${SECRET_KEY_BASE}

RUN RAILS_ENV=${RAILS_ENV} bundle exec rake assets:precompile
CMD ["rails", "s", "-p", "9292", "-b", "0.0.0.0", "-e", "${RAILS_ENV}"]
