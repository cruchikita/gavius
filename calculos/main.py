import pandas as pd
from sqlalchemy import create_engine
import psycopg2 as psql

print("Cargando gavius...")
engine = create_engine('postgresql://postgres:12345678@db:5432/postgres')
df=pd.read_csv('https://net.cimne.com/mataro/statistics.csv', dayfirst=True, parse_dates=['daterequested','dateresolution','dateupdated','datestart','dateend'])
df.to_sql('gavius', engine)

print("Cargando cens...")
df2 = pd.read_csv('https://net.cimne.com/mataro/demographic.csv', dayfirst=True, parse_dates=['birthdate','dateregunemployservices'])
df2.to_sql('cens', engine)
conn = engine.raw_connection()
conn.set_session(readonly=False, autocommit=True)

print("Cargando calculos...")
with conn.cursor() as cursor:
    with open('calculos.sql', 'r') as sql_file:
        cursor.execute(sql_file.read())

print("Completado")