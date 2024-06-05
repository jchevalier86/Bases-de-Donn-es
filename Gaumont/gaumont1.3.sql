/*==============================================================*/
/* nom de sgbd :  mysql 4.0                                     */
/* date de creation :  27/11/2020 17:18:54                      */
/*==============================================================*/
create database gaumont;
use gaumont;
/*==============================================================*/
/* table : acteurs                                              */
/*==============================================================*/
create table acteurs
(
   acteur                         varchar(50)                    not null,
   birthday                       date,
   nationalite                    char(50),
   specialite                     char(50),
   primary key (acteur)
);

/*==============================================================*/
/* table : filmacteur                                           */
/*==============================================================*/
create table filmacteur
(
   id                             int                            not null,
   acteur                         varchar(50)                    not null,
   primary key (id, acteur)
);

/*==============================================================*/
/* index : filmacteur_fk                                        */
/*==============================================================*/
create index filmacteur_fk on filmacteur
(
   id
);

/*==============================================================*/
/* index : filmacteur2_fk                                       */
/*==============================================================*/
create index filmacteur2_fk on filmacteur
(
   acteur
);

/*==============================================================*/
/* table : films                                                */
/*==============================================================*/
create table films
(
   id                             int                            not null auto_increment,
   dateheuremaj                   datetime,
   titrevf                        varchar(255),
   titrevo                        varchar(255),
   genre                          varchar(50),
   pays                           varchar(255),
   annee                          varchar(10),
   duree                          int,
   note                           int,
   realisateurs                   varchar(100),
   support                        varchar(50),
   nombresupport                  int,
   primary key (id)
);

alter table filmacteur add constraint fk_filmacteur foreign key (id)
      references films (id) on delete restrict on update restrict;

alter table filmacteur add constraint fk_filmacteur2 foreign key (acteur)
      references acteurs (acteur) on delete restrict on update restrict;

