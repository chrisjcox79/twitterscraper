FROM python:3.14.0a4-alpine
RUN apk add --update --no-cache g++ gcc libxslt-dev
COPY . /app
WORKDIR /app
RUN python setup.py install
CMD ["twitterscraper"]
