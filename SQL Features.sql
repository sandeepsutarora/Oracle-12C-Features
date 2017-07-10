--Create table containing 10 records
CREATE TABLE BusinessLeaders
(
   Buss_Leader_id     NUMBER(4) NOT NULL,
   Bussie_Full_name   VARCHAR2(100),
   Bussie_company     VARCHAR2(100),
   major_contribution VARCHAR2(100),
   salary			  NUMBER(10)   
 );
 /
  
 
 ALTER TABLE BusinessLeaders ADD CONSTRAINT pk_bl_id PRIMARY KEY  (Buss_Leader_id);
 
/

INSERT INTO BusinessLeaders Values(100,'Steve Jobs','Apple Computers','Digital World',4000);
INSERT INTO BusinessLeaders Values(101,'Bill Gates','Microsoft','Windows',5000);
INSERT INTO BusinessLeaders Values(102,'Jef Bozes','Amazon','Kindle',6000);
INSERT INTO BusinessLeaders Values(103,'Larry illision','Oracle Corporation','Database',4000);
INSERT INTO BusinessLeaders Values(104,'Larry Page','Google','Page RANK',7000);
INSERT INTO BusinessLeaders Values(105,'Mark Zukenberg','Facebook','Apps',8000);
INSERT INTO BusinessLeaders Values(106,'Denis Richie','C++ Programming','Object Oriented Programming',4500);
INSERT INTO BusinessLeaders Values(107,'Dell','Dell Computers','Laptops',7500);
INSERT INTO BusinessLeaders Values(108,'Warrent Buffe','Hathway','Invester',9000);
INSERT INTO BusinessLeaders Values(109,'Jeff Weinner','LinkedIn','Social Media',1000);
INSERT INTO BusinessLeaders Values(110,'Brad Smith','Intuit','Fishbowl',5002);
INSERT INTO BusinessLeaders Values(112,'Elon Musk','Space Ex','Mision Mars',3000);
INSERT INTO BusinessLeaders Values(113,'Tim Cook','Apple','Laptops',4004);
INSERT INTO BusinessLeaders Values(114,'Mary Berra','Computer','Database',5003);
INSERT INTO BusinessLeaders Values(115,'Carly Fiorina', 'CEO of Hewlett-Packard','Page RANK',4000);
INSERT INTO BusinessLeaders Values(116,'Sheryl Sandbarg','Facebook','Apps',5000);
INSERT INTO BusinessLeaders Values(117,'Indra Nooyi','Pepsico','Soda',4300);
INSERT INTO BusinessLeaders Values(118,'Iren Rosenfeld','Kraft','Laptops',4000);
INSERT INTO BusinessLeaders Values(119,'Virginia Rometty','IBM','Database',5000);
INSERT INTO BusinessLeaders Values(120,'Meg Whiteman','HP','hp',4001);
INSERT INTO BusinessLeaders Values(121,'Anne Sweeney','Media','Apps',6000);
INSERT INTO BusinessLeaders Values(122,'Angela Braley','C++ Programming','Object Oriented Programming',5007);
INSERT INTO BusinessLeaders Values(123,'Susan Wojcicki','Google','Laptops',1111);


/
--1. In 12c new feature to retrieve on specific number or percentage of records.

SELECT * FROM BusinessLeaders ORDER BY salary FETCH FIRST 10 ROWS ONLY

/
--Qyery will return seven records as last record ties with sevent record.

SELECT * FROM BusinessLeaders ORDER BY salary FETCH FIRST 6 ROWS WITH TIES

/
--Descending order salary is kept. select rows between 5 to 10 records.

SELECT * FROM BusinessLeaders ORDER BY salary OFFSET 5 ROWS FETCH NEXT 10 ROWS ONLY

/
--2 dbms_utility.expand_sql_text
--In this new feature, we need to provide SQL to find out all the view's and base table where


DECLARE
v_output VARCHAR2(32761);
BEGIN
  DBMS_UTILITY.expand_sql_text('select * from user_sequences',v_output);
  DBMS_OUTPUT.PUT_LINE(V_output);
END;



