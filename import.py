import pandas as pd
from sqlalchemy import create_engine
engine = create_engine('postgresql://postgres:12345678@localhost:5432/postgres')
df=pd.read_csv('statistics.csv', dayfirst=True, parse_dates=['daterequested','dateresolution','dateupdated','datestart','dateend'])
df.to_sql('gavius_python', engine)