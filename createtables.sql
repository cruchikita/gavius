create table cens
(
    index                       bigint,
    "Unnamed: 0"                bigint,
    birthdate                   timestamp,
    agerange                    double precision,
    nodeclare                   double precision,
    dateregunemployservices     timestamp,
    familyburden                double precision,
    longtermunemployed          double precision,
    lastirpf                    double precision,
    taxdutiespaid               double precision,
    npropcars                   double precision,
    npropdwellings              double precision,
    npropstoragerooms           double precision,
    npropcarparkings            double precision,
    telecareenoughcogncapacity  double precision,
    hasassignedsupportcompanion bigint,
    reducedmobilityscore        bigint,
    disabilitydegree            bigint,
    dependency                  bigint,
    minorscustody               double precision,
    genderviolencevictim        double precision,
    sumpercpropertyandusufruct  double precision,
    minimumvitalincome          double precision,
    otherincomes                double precision,
    wealthincrease              double precision,
    capitalgainsincomes         double precision,
    realstatepropertiesabroad   double precision,
    workincomes                 double precision,
    totalpublicincomes          double precision,
    unemploymentincomes         double precision,
    totalincomes                double precision,
    ms_maritalstatus_id         bigint,
    ms_maritalstatus_code       text,
    ge_gender_id                bigint,
    ge_name                     text,
    gaviususer_id               text,
    gu_language_code            text,
    gu_da0_zipcode              double precision,
    gu_da_0_censustract         double precision,
    gu_da_0_localgrid           double precision,
    gu_da_0_pollingplace_id     double precision,
    gu_da_0_municipality_name   text,
    gu_da_0_n_neighbourhood_id  text,
    gu_da_0_n_name              text,
    gu_da_1_zipcode             double precision,
    gu_da_1_censustract         double precision,
    gu_da_1_localgrid           double precision,
    gu_da_1_pollingplace_id     double precision,
    gu_da_1_municipality_name   double precision,
    gu_da_1_n_neighbourhood_id  double precision,
    gu_da_1_n_name              double precision,
    gu_bpgu_datecensusend       double precision,
    es_name                     text,
    pcu_cu_cohabitationunit_id  double precision,
    pcu_cu_numerousfamily       double precision,
    pcu_cu_nunemployed          double precision,
    pcu_cu_nadults              double precision,
    pcu_cu_nminors              double precision,
    pcu_cu_nminorsschool        double precision,
    pcu_cu_lowincome            double precision,
    pcu_cu_childreception       double precision,
    pcu_cu_nmembers             double precision,
    pcu_cu_totalincomes         double precision,
    pcu_mt_membertype_id        double precision,
    pcu_mt_name                 text,
    cggu_cg_comorbidgroup_id    double precision,
    cggu_cg_name                double precision,
    cggu_assignemntdate         double precision,
    cggu_origin                 double precision
);

create table public.gavius
(
    index                   bigint,
    "Unnamed: 0"            bigint,
    file_id                 text,
    gaviususer_id           text,
    recipient               double precision,
    petitionary             double precision,
    daterequested           timestamp,
    dateresolution          timestamp,
    dateupdated             timestamp,
    datestart               timestamp,
    dateend                 timestamp,
    status                  text,
    amountgranted           double precision,
    amountrequested         double precision,
    waitinglistpriority     double precision,
    sae_socialaidedition_id bigint,
    sae_totalfunds          double precision,
    sae_datestart           text,
    sae_dateend             text,
    sa_socialaid_id         bigint,
    sa_recommendable        bigint,
    sa_municipality_name    text,
    sa_saac_n_saac          bigint,
    sa_sac_sacategory_id    bigint,
    sa_c_cost_id            double precision,
    sa_c_cost               double precision
);

create index ix_cens_index on cens (index);
create index ix_gavius_index on gavius (index);