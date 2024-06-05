/*==============================================================*/
/* Nom de SGBD :  MySQL 4.0                                     */
/* Date de création :  22/12/2020 17:26:22                      */
/*==============================================================*/



/*==============================================================*/
/* Table : clients                                              */
/*==============================================================*/
create table clients
(
   telephone                      char(10)                       not null,
   nom                            varchar(200)                   not null,
   adresse                        varchar(200)                   not null,
   note                           text,
   primary key (telephone)
);

/*==============================================================*/
/* Table : commandes                                            */
/*==============================================================*/
create table commandes
(
   id_commande                    int                            not null,
   telephone                      char(10)                       not null,
   date_commande                  date,
   prix                           float(8,2),
   remise                         int,
   prix_total                     float(8,2),
   date_livraison                 date,
   note                           text,
   foreign key (telephone) references clients (telephone),
   primary key (id_commande)
);

/*==============================================================*/
/* Index : passe_commande_fk                                    */
/*==============================================================*/
create index passe_commande_fk on commandes
(
   telephone
);

/*==============================================================*/
/* Table : ingredients                                          */
/*==============================================================*/
create table ingredients
(
   id_ingredient                  int                            not null,
   ingredient                     varchar(200)                   not null,
   primary key (id_ingredient)
);

/*==============================================================*/
/* Table : lignes_commandes                                     */
/*==============================================================*/
create table lignes_commandes
(
   id_commande                    int                            not null,
   id_pizza                       int                            not null,
   ligne                          int,
   quantite                       int,
   montant                        float(8,2),
   foreign key (id_commande) references commandes (id_commande),
   foreign key (id_pizza) references pizzas (id_pizza),
   primary key (id_commande, id_pizza)
);

/*==============================================================*/
/* Index : lignes_commandes_fk                                  */
/*==============================================================*/
create index lignes_commandes_fk on lignes_commandes
(
   id_commande
);

/*==============================================================*/
/* Index : lignes_commandes2_fk                                 */
/*==============================================================*/
create index lignes_commandes2_fk on lignes_commandes
(
   id_pizza
);

/*==============================================================*/
/* Table : pizzas                                               */
/*==============================================================*/
create table pizzas
(
   id_pizza                       int                            not null,
   nom                            varchar(200)                   not null,
   taille                         int,
   prix                           float(8,2),
   primary key (id_pizza)
);

/*==============================================================*/
/* Table : pizza_ingredients                                    */
/*==============================================================*/
create table pizza_ingredients
(
   id_ingredient                  int                            not null,
   id_pizza                       int                            not null,
   quantite                       int,
   foreign key (id_ingredient) references ingredients (id_ingredient),
   foreign key (id_pizza) references pizzas (id_pizza)
   primary key (id_ingredient, id_pizza)
);

/*==============================================================*/
/* Index : pizza_ingredients_fk                                 */
/*==============================================================*/
create index pizza_ingredients_fk on pizza_ingredients
(
   id_ingredient
);

/*==============================================================*/
/* Index : pizza_ingredients2_fk                                */
/*==============================================================*/
create index pizza_ingredients2_fk on pizza_ingredients
(
   id_pizza
);

