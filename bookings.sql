--liquibase formatted sql

--changeset liquibase:1
CREATE DATABASE IF NOT EXISTS LIQUIBASE_TEST
  
--changeset liquibase:2
CREATE TABLE IF NOT EXISTS test_table (test_id INT NOT NULL, test_column INT, PRIMARY KEY (test_id))
