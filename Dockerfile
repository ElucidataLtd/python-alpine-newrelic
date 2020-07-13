FROM python:3.6.9-alpine3.10
# install ddtrace
RUN apk add --virtual build-deps gcc python3-dev python-dev build-base musl-dev linux-headers \
    && pip install --no-cache-dir ddtrace \
    && apk del build-deps \
    && rm -rf /var/lib/apt/lists/*
