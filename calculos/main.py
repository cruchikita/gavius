import pandas as pd
from sqlalchemy import create_engine
import psycopg2

#DROP VIEW ayudas;DROP TABLE bolas;DROP TABLE cens;DROP TABLE gavius;
#baseurl = "https://net.cimne.com/gava/"
baseurl = "https://net.cimne.com/mataro/"

print("Cargando gavius...")
engine = create_engine('postgresql://postgres:12345678@db:5432/postgres')
df=pd.read_csv(baseurl + 'statistics.csv', dayfirst=True, parse_dates=['daterequested','dateresolution','dateupdated','datestart','dateend'])
df.to_sql('gavius', engine)

print("Cargando cens...")
df2 = pd.read_csv(baseurl + 'demographic.csv', dayfirst=True, parse_dates=['birthdate','dateregunemployservices'])
df2.to_sql('cens', engine)
conn = engine.raw_connection()
conn.set_session(readonly=False, autocommit=True)

print("Cargando calculos SQL...")
with conn.cursor() as cursor:
    with open('calculos.sql', 'r') as sql_file:
        cursor.execute(sql_file.read())

        print("Calculos procedurales...")
        sqlst = "SELECT sa_socialaid_id FROM ayudas;"
        cursor.execute(sqlst)
        ayudas = [item[0] for item in cursor.fetchall()]
        for i in ayudas:
            for j in ayudas:
                if j!=i:
                    sqlst = "INSERT INTO bolas SELECT "+ str(i) +","+ str(j) +",COUNT(*) FROM (SELECT * FROM (SELECT  gaviususer_id, min(daterequested) AS datetime FROM gavius WHERE sa_socialaid_id="+ str(i) +" GROUP BY gaviususer_id) AS pre INNER JOIN (SELECT  gaviususer_id, max(daterequested) AS datetime FROM gavius WHERE sa_socialaid_id="+ str(j) +" GROUP BY gaviususer_id) AS post ON pre.gaviususer_id = post.gaviususer_id WHERE pre.datetime < post.datetime) AS cuantos;"
                    cursor.execute(sqlst)

print("Calculos finalizados con éxito")