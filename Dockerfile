FROM python:3.6.9-alpine3.10
# install newRelic and ddtrace
RUN apk add --virtual build-deps gcc python3-dev python-dev build-base musl-dev linux-headers \
    && pip install --no-cache-dir newrelic ddtrace \
    && apk del build-deps \
    && rm -rf /var/lib/apt/lists/*

COPY ./newrelic /newrelic

ENV NEW_RELIC_LICENSE_KEY=xxx
ENV NEW_RELIC_ENVIRONMENT=development
ENV NEW_RELIC_CONFIG_FILE=/newrelic/newrelic.ini
