/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2018/4/10 14:31:16                           */
/*==============================================================*/


drop table if exists Relationship_11;

drop table if exists Relationship_6;

drop table if exists Relationship_7;

drop table if exists cs_collect;

drop table if exists cs_comment;

drop table if exists cs_foodinfo;

drop table if exists cs_image;

drop table if exists cs_orifood;

drop table if exists cs_orisort;

drop table if exists cs_recommend;

drop table if exists cs_sort;

drop table if exists cs_topic;

drop table if exists cs_user;

drop table if exists follow;

/*==============================================================*/
/* Table: Relationship_11                                       */
/*==============================================================*/
create table Relationship_11
(
   fid                  int not null,
   oid                  int not null,
   primary key (fid, oid)
);

/*==============================================================*/
/* Table: Relationship_6                                        */
/*==============================================================*/
create table Relationship_6
(
   cid                  int not null,
   primary key (cid)
);

/*==============================================================*/
/* Table: Relationship_7                                        */
/*==============================================================*/
create table Relationship_7
(
   uid                  int not null,
   primary key (uid)
);

/*==============================================================*/
/* Table: cs_collect                                            */
/*==============================================================*/
create table cs_collect
(
   uid                  int,
   ctid                 int,
   u_id                 int,
   f_id                 int
);

/*==============================================================*/
/* Table: cs_comment                                            */
/*==============================================================*/
create table cs_comment
(
   cid                  int not null,
   uid                  int,
   c_content            char(255),
   c_time               timestamp,
   tid                  int,
   primary key (cid)
);

/*==============================================================*/
/* Table: cs_foodinfo                                           */
/*==============================================================*/
create table cs_foodinfo
(
   fid                  int not null,
   i_id                 int,
   uid                  int,
   sid                  int,
   f_title              char(50) not null,
   f_dis                char(255),
   f_sort               int,
   f_uid                int,
   f_time               timestamp,
   f_collect            int,
   f_like               int,
   primary key (fid)
);

/*==============================================================*/
/* Table: cs_image                                              */
/*==============================================================*/
create table cs_image
(
   i_id                 int not null,
   fid                  int,
   f_id                 int,
   primary key (i_id)
);

/*==============================================================*/
/* Table: cs_orifood                                            */
/*==============================================================*/
create table cs_orifood
(
   oid                  int not null,
   osid                 int,
   o_name               varchar(50),
   o_type               int,
   f_id                 int,
   o_dis                varchar(255),
   primary key (oid)
);

/*==============================================================*/
/* Table: cs_orisort                                            */
/*==============================================================*/
create table cs_orisort
(
   osid                 int not null,
   os_name              varchar(50),
   os_dis               varchar(255),
   primary key (osid)
);

/*==============================================================*/
/* Table: cs_recommend                                          */
/*==============================================================*/
create table cs_recommend
(
   fid                  int
);

/*==============================================================*/
/* Table: cs_sort                                               */
/*==============================================================*/
create table cs_sort
(
   sid                  int not null,
   s_name               char(50) not null,
   s_dis                char(255),
   primary key (sid)
);

/*==============================================================*/
/* Table: cs_topic                                              */
/*==============================================================*/
create table cs_topic
(
   tid                  int not null,
   u_id                 int,
   t_content            char(255),
   t_time               timestamp,
   t_like               int,
   t_comment            int,
   primary key (tid)
);

/*==============================================================*/
/* Table: cs_user                                               */
/*==============================================================*/
create table cs_user
(
   uid                  int not null auto_increment,
   u_name               char(50),
   u_qq                 varchar(15),
   u_email              varchar(50),
   u_phone              varchar(15),
   u_passwd             varchar(50) not null,
   u_dis                char(255),
   u_head               int,
   u_admin              bool,
   u_sex                int,
   u_collect            int,
   u_level              int,
   u_time               timestamp not null,
   primary key (uid)
);
