docker build --tag cra2-psql .

docker run --name cra2-psql-container -p 5432:5432 -v postgres-data:/var/lib/postgresql/data cra2-psql
