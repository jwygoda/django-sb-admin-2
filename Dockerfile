FROM python:3.7
ENV PYTHONUNBUFFERED 1
RUN mkdir /code
WORKDIR /code
ARG REQUIREMENTS
COPY requirements/${REQUIREMENTS}.txt /code/requirements.txt
RUN pip install -r requirements.txt
COPY . /code/
