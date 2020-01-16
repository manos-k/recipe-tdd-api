FROM python:3.8.1-alpine3.11

#run unbuffered for a reason i didn't understand
ENV PYTHONUNBUFFERED=1

#requirements for django
COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

#copy application
RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D manos
USER manos
