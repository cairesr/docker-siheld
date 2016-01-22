FROM ruby:2.3.0-onbuild

RUN apt-get update && \
    apt-get install -y net-tools

# Install gems
ENV APP_HOME /app
ENV HOME /root
RUN mkdir $APP_HOME/
WORKDIR $APP_HOME

# Upload source
COPY . $APP_HOME

# Install gems
RUN bundle install

# Start server
ENV PORT 3000
EXPOSE 3000
CMD ["ruby", "./hello_world.rb"]