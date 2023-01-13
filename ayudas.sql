create table ayudas
(
    sa_socialaid_id   integer not null constraint sa_socialaid_id primary key,
    sa_socialaid_name varchar not null,
    sa_socialaid_type integer
);

insert into ayudas (sa_socialaid_id, sa_socialaid_name, sa_socialaid_type)
values  (1, 'Informe de Risc d''Exclusió Residencial', 1),
        (2, 'Sol·licitud de valoració per accedir a ajut alimentari', 1),
        (3, 'Sol·licitud de Carnet Blau', 2),
        (4, 'Ajut de l''IBI per a families nombroses', 3),
        (5, 'Sol·licitud de teleassistència', 2),
        (6, 'Sol·licitud de beca d''escola bressol', 2),
        (7, 'Subvenció i Beneficis fiscals per raó de capacitat econòmica', 2),
        (8, 'Ajut a l''habitatge per a families monoparentals', 3),
        (9, 'Benestar Social: Consulta Dades', 1),
        (10, 'Sol·licitud d''ajut individual de menjador', 2),
        (11, 'Borsa Treball: Presentació, modificació i baixa de sol·licitud d''inscripció', 1),
        (12, 'RHPS-Procès Selectiu: Presentació de mèrits i requisits', 1),
        (13, 'IBI: Bonificació per a obres que fomentin l''estalvi energètic i energies renovables', 3),
        (14, 'IBI: Bonificació per Habitatges de Protecció Oficial', 3),
        (15, 'Habitatge: Sol·licitud de subvencions per a habitatges en el marc del projecte Lloguem!', 3),
        (16, 'Taxa de gestió de residus municipals: Exempció o bonificació parcial', 2),
        (17, 'Benestar Social: Sol·licitar valoració per ajut alimentari', 1),
        (18, 'Tarjeta d''aparcament individual per a persones amb mobilitat reduïda', 2),
        (19, 'Atenció social bàsica', 2),
        (20, 'Prestacions econòmiques d''urgència social', 2);


