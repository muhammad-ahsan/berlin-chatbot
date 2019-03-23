FROM python:3.6.5-stretch
MAINTAINER Muhammad Ahsan <muhammad.ahsan@gmail.com>
WORKDIR /usr/src/app
RUN apt-get update
RUN apt-get -y install supervisor
COPY uwsgi.ini .
COPY supervisor.conf /etc/supervisor/conf.d/
ENV PIP_CONFIG_FILE=.pip/pip.conf
COPY requirements.txt ./
RUN pip install -r requirements.txt  --upgrade --no-cache-dir
RUN pip install --upgrade pip
COPY app.py ./
COPY logging.conf ./
COPY swagger ./swagger
COPY berlinchatbot ./berlinchatbot
EXPOSE 8080
CMD ["supervisord", "-n"]