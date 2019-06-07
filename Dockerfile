FROM python:3.6.6-alpine
ENV PATH="/root/.local/bin:${PATH}"
RUN apk update
RUN apk add --no-cache bash
RUN apk add build-base
RUN \
 apk add --no-cache postgresql-libs && \
 apk add --no-cache --virtual .build-deps gcc musl-dev postgresql-dev

RUN pip install --user aws-sam-cli
RUN pip install --user numpy
RUN pip install --user pandas