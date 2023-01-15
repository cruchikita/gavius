create view ayudas as select sa_socialaid_id, sa_name, count(*) as total from gavius group by sa_socialaid_id, sa_name;
create view poblacion as SELECT DATE_TRUNC('year',birthdate) AS anyo, COUNT(*) AS total FROM cens GROUP BY DATE_TRUNC('year',birthdate);
update cens set agerange = 1;
update cens set agerange = 2 where extract(years from age(birthdate)) > 30;
update cens set agerange = 3 where extract(years from age(birthdate)) > 45;
update cens set agerange = 4 where extract(years from age(birthdate)) > 60;
create table bolas(sa_id_ini  integer not null, sa_id_next integer not null, count integer default 0, constraint bolas_pk primary key (sa_id_next, sa_id_ini));
