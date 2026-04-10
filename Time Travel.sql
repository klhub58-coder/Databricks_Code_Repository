-- Databricks notebook source
use catalog workspacefeb122026

-- COMMAND ----------

use AMAZONDATABASE

-- COMMAND ----------

CREATE TABLE students (id INT, name STRING, value DOUBLE);

-- COMMAND ----------

INSERT INTO students VALUES (1, "Ted", 4.7), (2, "Tiffany", 5.5), (3, "Vini", 6.3);

-- COMMAND ----------

DESCRIBE EXTENDED students;

-- COMMAND ----------

update students set value = value * 10 where id in (1,3);

-- COMMAND ----------

delete from students where id = 2;

-- COMMAND ----------

describe history students;


-- COMMAND ----------

select * from students  VERSION AS OF 5