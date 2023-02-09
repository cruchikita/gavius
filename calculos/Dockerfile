FROM python:3
RUN apt-get update && apt-get -y install cron vim
WORKDIR /app
RUN pip3 install pandas sqlalchemy psycopg2
COPY main.py main.py
COPY calculos.sql calculos.sql
#COPY barris_gava.csv barris.csv
COPY barris_mataro.csv barris.csv
COPY chronicity.csv chronicity.csv
COPY predictions_requests.csv predictions_requests.csv
COPY budgets.json budgets.json
COPY budget_metrics.json budget_metrics.json
RUN crontab -l | { cat; echo "0 1 * * *  /usr/local/bin/python /app/main.py > /proc/1/fd/1 2>/proc/1/fd/2"; } | crontab -
CMD ["cron","-f"]