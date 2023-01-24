create view ayudas as select sa_socialaid_id, sa_name, count(*) as total from gavius group by sa_socialaid_id, sa_name;
create view poblacion as SELECT DATE_TRUNC('year',birthdate) AS anyo, COUNT(*) AS total FROM cens GROUP BY DATE_TRUNC('year',birthdate);
update cens set agerange = 1;
update cens set agerange = 2 where extract(years from age(birthdate)) > 30;
update cens set agerange = 3 where extract(years from age(birthdate)) > 45;
update cens set agerange = 4 where extract(years from age(birthdate)) > 60;
create index if not exists idx_cens_sexe on cens(ge_name);
create index if not exists idx_cens_barri on cens(gu_da_0_n_name);
create index if not exists idx_cens_edat on cens(agerange);
create table if not exists bolas(sa_id_ini  integer not null, sa_id_next integer not null, count integer default 0, constraint bolas_pk primary key (sa_id_next, sa_id_ini));
create table if not exists caminos(id SERIAL, source integer not null, target integer not null, mainstat decimal not null, constraint caminos_pk primary key(source,target));
DELETE FROM bolas;
DELETE FROM caminos;
ALTER SEQUENCE caminos_id_seq RESTART WITH 1;