FROM ruby:alpine
ENV LICENSE_KEY="notset" \
    PORT="4569"
COPY . /

RUN bundle install
ENTRYPOINT ["/entrypoint.sh"]
EXPOSE 4569
