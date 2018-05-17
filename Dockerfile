FROM python:2.7
# File Author / Maintainer
MAINTAINER Saurabh
ADD . /usr/src/app
WORKDIR /usr/src/app
RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 8090
CMD exec gunicorn djangoapp.wsgi:application --bind 0.0.0.0:8090 --workers 3
