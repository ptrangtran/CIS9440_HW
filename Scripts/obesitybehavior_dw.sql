CREATE SCHEMA INSTANCE;

CREATE TABLE Obesity_Behavioral_dw_lgl.INSTANCE.dim_location ( 
	location_id int64 NOT NULL  ,
	country string  ,
	state string  ,
	state_abbr string  ,
	city string  ,
	latitude bignumeric  ,
	longitude bignumeric  
 );

ALTER TABLE Obesity_Behavioral_dw_lgl.INSTANCE.dim_location ADD PRIMARY KEY ( location_id )  NOT ENFORCED;

CREATE TABLE Obesity_Behavioral_dw_lgl.INSTANCE.dim_question ( 
	question_id string NOT NULL  ,
	question string  
 );

ALTER TABLE Obesity_Behavioral_dw_lgl.INSTANCE.dim_question ADD PRIMARY KEY ( question_id )  NOT ENFORCED;

CREATE TABLE Obesity_Behavioral_dw_lgl.INSTANCE.dim_stratificication ( 
	stratification_id string NOT NULL  ,
	stratification_category1 string  ,
	stratification_category2 string  ,
	stratification string  
 );

ALTER TABLE Obesity_Behavioral_dw_lgl.INSTANCE.dim_stratificication ADD PRIMARY KEY ( stratification_id )  NOT ENFORCED;

CREATE TABLE Obesity_Behavioral_dw_lgl.INSTANCE.dim_topic ( 
	topic_id int64 NOT NULL  ,
	topic string  
 );

ALTER TABLE Obesity_Behavioral_dw_lgl.INSTANCE.dim_topic ADD PRIMARY KEY ( topic_id )  NOT ENFORCED;

CREATE TABLE Obesity_Behavioral_dw_lgl.INSTANCE.dim_year ( 
	year_id int64 NOT NULL  ,
	year_start date  ,
	year_end date  
 );

ALTER TABLE Obesity_Behavioral_dw_lgl.INSTANCE.dim_year ADD PRIMARY KEY ( year_id )  NOT ENFORCED;

CREATE TABLE Obesity_Behavioral_dw_lgl.INSTANCE.facts_obesity_behavioral ( 
	fact_id int64 NOT NULL  ,
	year_id int64 NOT NULL  ,
	location_id int64 NOT NULL  ,
	stratification_id int64 NOT NULL  ,
	topic_id string NOT NULL  ,
	question_id string NOT NULL  ,
	data_value numeric(2,2)  
 );

ALTER TABLE Obesity_Behavioral_dw_lgl.INSTANCE.facts_obesity_behavioral ADD PRIMARY KEY ( fact_id, location_id, topic_id, stratification_id, year_id, question_id )  NOT ENFORCED;
