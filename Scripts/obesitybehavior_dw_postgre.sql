CREATE SCHEMA IF NOT EXISTS "instance";

CREATE  TABLE "instance".dim_location ( 
	location_id          integer  NOT NULL  ,
	country              char(25)    ,
	state_abbr           varchar(2)    ,
	"state"              varchar(20)    ,
	zipcode              integer    ,
	latitude             integer    ,
	longitude            integer    ,
	CONSTRAINT pk_dim_location PRIMARY KEY ( location_id )
 );

CREATE  TABLE "instance".dim_question ( 
	question_id          varchar(4)  NOT NULL  ,
	question             varchar(250)    ,
	CONSTRAINT pk_dim_question PRIMARY KEY ( question_id )
 );

CREATE  TABLE "instance".dim_stratificication ( 
	stratification_id    varchar(12)  NOT NULL  ,
	stratification_category1 varchar(10)    ,
	stratification_category2 varchar(20)    ,
	stratification       varchar(50)    ,
	CONSTRAINT pk_dim_stratificication PRIMARY KEY ( stratification_id )
 );

CREATE  TABLE "instance".dim_topic ( 
	topic_id             integer  NOT NULL  ,
	topic                varchar(25)    ,
	CONSTRAINT pk_dim_class_topic_question PRIMARY KEY ( topic_id )
 );

CREATE  TABLE "instance".dim_year ( 
	year_id              integer  NOT NULL  ,
	year_start           date    ,
	year_end             date    ,
	CONSTRAINT pk_dim_year PRIMARY KEY ( year_id )
 );

CREATE  TABLE "instance".facts_obesity_behavioral ( 
	fact_id              bigint  NOT NULL  ,
	year_id              integer  NOT NULL  ,
	location_id          integer  NOT NULL  ,
	stratification_id    varchar(12)  NOT NULL  ,
	topic_id             varchar(3)  NOT NULL  ,
	question_id          varchar(4)  NOT NULL  ,
	data_value           numeric(2,2)    ,
	CONSTRAINT pk_facts_obesity_behavioral PRIMARY KEY ( fact_id, location_id, topic_id, stratification_id, year_id, question_id )
 );
