--liquibase formatted sql

--changeset liquibase:1
CREATE DATABASE IF NOT EXISTS liquibase_TEST;
CREATE SCHEMA IF NOT EXISTS liquibase_TEST.test;

--changeset liquibase:2
CREATE TABLE liquibase_TEST.test.test_table (test_id INT NOT NULL, test_column INT, PRIMARY KEY (test_id))
