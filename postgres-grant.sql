-- var_database = nome_database
-- var_username = username
-- var_database_name = database

-- 1. Grant CONNECT to the database:
GRANT CONNECT ON DATABASE var_database_name TO var_username;

-- 2. Grant USAGE on schema:
GRANT USAGE ON SCHEMA var_schema_name TO var_username;

-- 3. Grant on all tables for DML statements: SELECT, INSERT, UPDATE, DELETE:
GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA var_schema_name TO var_username;

-- 4. Grant all privileges on all tables in the schema:
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA var_schema_name TO var_username;

-- 5. Grant all privileges on all sequences in the schema:
GRANT ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA var_schema_name TO var_username;

-- 6. Grant all privileges on the database:
GRANT ALL PRIVILEGES ON DATABASE var_database_name TO var_username;

-- 7. Grant permission to create database:
ALTER USER var_username CREATEDB;

-- 8. Make a user superuser:
ALTER USER var_username WITH SUPERUSER;

-- 9. Remove superuser status:
ALTER USER var_username WITH NOSUPERUSER;
