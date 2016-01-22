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

# set sinatra port variable
ENV PORT 3000

# container's port to be exposed
EXPOSE 3000

# Start server
CMD ["ruby", "./hello_world.rb"]