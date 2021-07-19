

SELECT pg_terminate_backend(pg_stat_activity.pid) FROM pg_stat_activity 
WHERE pg_stat_activity.datname = 'originaldb' AND pid <> pg_backend_pid();

CREATE DATABASE newdb WITH TEMPLATE originaldb OWNER dbuser;
