CREATE SCHEMA IF NOT EXISTS "obesitybehavior";

CREATE  TABLE "obesitybehavior".dim_location ( 
	locationid           integer  NOT NULL  ,
	country              char(25)    ,
	"state"              varchar(20)    ,
	stateabbr            varchar(2)    ,
	zipcode              integer    ,
	latitude             integer    ,
	longitude            integer    ,
	CONSTRAINT pk_dim_location PRIMARY KEY ( locationid )
 );

CREATE  TABLE "obesitybehavior".dim_question ( 
	questionid           varchar(4)  NOT NULL  ,
	question             varchar(250)    ,
	CONSTRAINT pk_dim_question PRIMARY KEY ( questionid )
 );

CREATE  TABLE "obesitybehavior".dim_stratificication ( 
	stratificationid     varchar(12)  NOT NULL  ,
	stratificationcategory1 varchar(10)    ,
	stratificationcategory2 varchar(20)    ,
	stratification       varchar(50)    ,
	CONSTRAINT pk_dim_stratificication PRIMARY KEY ( stratificationid )
 );

CREATE  TABLE "obesitybehavior".dim_topic ( 
	topicid              integer  NOT NULL  ,
	topic                varchar(25)    ,
	CONSTRAINT pk_dim_class_topic_question PRIMARY KEY ( topicid )
 );

CREATE  TABLE "obesitybehavior".dim_year ( 
	yearid               integer  NOT NULL  ,
	yearstart            date    ,
	yearend              date    ,
	CONSTRAINT pk_dim_year PRIMARY KEY ( yearid )
 );

CREATE  TABLE "obesitybehavior".facts_obesitybehavior ( 
	factid               bigint  NOT NULL  ,
	yearid               integer  NOT NULL  ,
	locationid           integer  NOT NULL  ,
	stratificationid     varchar(12)  NOT NULL  ,
	topicid              varchar(3)  NOT NULL  ,
	questionid           varchar(4)  NOT NULL  ,
	datavalue            numeric(2,2)    ,
	lowconfidence        numeric(2,2)    ,
	highconfidence       numeric(2,2)    ,
	samplesize           numeric(2,2)    ,
	CONSTRAINT pk_facts_obesity_behavioral PRIMARY KEY ( factid, locationid, topicid, stratificationid, yearid, questionid )
 );
