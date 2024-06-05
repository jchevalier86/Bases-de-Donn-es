/*==============================================================*/
/* Nom de SGBD :  MySQL 4.0                                     */
/* Date de création :  04/01/2021 15:39:44                      */
/*==============================================================*/

/*==============================================================*/
/* Table : segment                                              */
/*==============================================================*/
create table segment
(
   indip                          varchar(11)                    not null,
   nomsegment                     varchar(20)                    not null,
   etage                          smallint,
   primary key (indip)
);

/*==============================================================*/
/* Table : types                                                */
/*==============================================================*/
create table types
(
   typelp                         varchar(9)                     not null,
   nomtype                        varchar(20)                    not null,
   primary key (typelp)
);

/*==============================================================*/
/* Table : salle                                                */
/*==============================================================*/
create table salle
(
   nsalle                         varchar(7)                     not null,
   nomsalle                       varchar(20)                    not null,
   nbposte                        smallint,
   indip                          varchar(11)                    not null,
   primary key (nsalle)
);

/*==============================================================*/
/* Index : possede_fk                                           */
/*==============================================================*/
create index possede_fk on salle
(
   indip
);

/*==============================================================*/
/* Table : poste                                                */
/*==============================================================*/
create table poste
(
   nposte                         varchar(7)                     not null,
   nomposte                       varchar(20)                    not null,
   indip                          varchar(11)                    not null,
   ad                             varchar(3),
   typelp                         varchar(9)                     not null,
   nsalle                         varchar(7)                     not null,
   primary key (nposte)
);

/*==============================================================*/
/* Index : comporte_fk                                          */
/*==============================================================*/
create index comporte_fk on poste
(
   nsalle
);

/*==============================================================*/
/* Index : alimente_fk                                          */
/*==============================================================*/
create index alimente_fk on poste
(
   indip
);

/*==============================================================*/
/* Index : typoste_fk                                           */
/*==============================================================*/
create index typoste_fk on poste
(
   typelp
);

/*==============================================================*/
/* Table : logiciel                                             */
/*==============================================================*/
create table logiciel
(
   nlog                           varchar(5)                     not null,
   nomlog                         varchar(20)                    not null,
   dateach                        datetime,
   version                        varchar(7),
   typelp                         varchar(9)                     not null,
   prix                           decimal(6,2),
   primary key (nlog)
);

/*==============================================================*/
/* Index : tylog_fk                                             */
/*==============================================================*/
create index tylog_fk on logiciel
(
   typelp
);

/*==============================================================*/
/* Table : installer                                            */
/*==============================================================*/
create table installer
(
   nposte                         varchar(7)                     not null,
   nlog                           varchar(5)                     not null,
   numins                         int                            not null,
   dateins                        datetime,
   delai                          smallint,
   primary key (nposte, nlog)
);

/*==============================================================*/
/* Index : installer_fk                                         */
/*==============================================================*/
create index installer_fk on installer
(
   nposte
);

/*==============================================================*/
/* Index : installer2_fk                                        */
/*==============================================================*/
create index installer2_fk on installer
(
   nlog
);

alter table installer add constraint fk_installer foreign key (nposte)
      references poste (nposte) on delete restrict on update restrict;

alter table installer add constraint fk_installer2 foreign key (nlog)
      references logiciel (nlog) on delete restrict on update restrict;

alter table logiciel add constraint fk_tylog foreign key (typelp)
      references types (typelp) on delete restrict on update restrict;

alter table poste add constraint fk_alimente foreign key (indip)
      references segment (indip) on delete restrict on update restrict;

alter table poste add constraint fk_comporte foreign key (nsalle)
      references salle (nsalle) on delete restrict on update restrict;

alter table poste add constraint fk_typoste foreign key (typelp)
      references types (typelp) on delete restrict on update restrict;

alter table salle add constraint fk_possede foreign key (indip)
      references segment (indip) on delete restrict on update restrict;

