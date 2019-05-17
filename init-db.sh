#!/bin/bash

psql -v ON_ERROR_STOP=1 --username postgres --dbname postgres <<-EOSQL
   CREATE USER pivotal;
   CREATE DATABASE alfresco_dev;
   CREATE DATABASE cof_dev;
   GRANT ALL PRIVILEGES ON DATABASE alfresco_dev TO pivotal;
   GRANT ALL PRIVILEGES ON DATABASE cof_dev TO pivotal; 
EOSQL


