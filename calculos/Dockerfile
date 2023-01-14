FROM python:3
RUN apt-get update && apt-get -y install cron vim
WORKDIR /app
RUN pip3 install pandas sqlalchemy psycopg2
COPY crontab /etc/cron.d/crontab
RUN chmod 0644 /etc/cron.d/crontab
RUN /usr/bin/crontab /etc/cron.d/crontab
COPY main.py main.py
COPY calculos.sql calculos.sql
CMD ["cron", "-f"]