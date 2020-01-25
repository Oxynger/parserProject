# Start server
- Create folder `/var/constainers/postgres/data`


- Execute command `docker-compose up --build` into root of repo folder 

- Together with the apache service, the db service will launched. But the current version of the apache service working with database on server side. Command `docker-compose stop db` will stop the db service.
