FROM python:3
RUN apt-get update && apt-get -y install cron vim
WORKDIR /app
RUN pip3 install pandas sqlalchemy psycopg2
COPY main.py main.py
COPY calculos.sql calculos.sql
RUN chmod 0644 /app/main.py
RUN crontab -l | { cat; echo "0 01 * * *  /usr/local/bin/python /app/main.py > /proc/1/fd/1 2>/proc/1/fd/2"; } | crontab -
CMD ["cron", "-f"]
#CMD ["python", "main.py"]