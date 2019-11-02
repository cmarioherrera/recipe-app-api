FROM python:3.7-alpine

ENV PYTHONUNBUFFERED 1

WORKDIR /app

COPY ./requirements.txt /requirements.txt
RUN pip install --upgrade pip
RUN pip install -r /requirements.txt


COPY ./app /app

RUN adduser -D user
USER user