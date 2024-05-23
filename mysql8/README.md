# Run docker

<pre>
docker network create local_dev_network
docker compose up -d
</pre>

# Add database

1. Create folder named database at `./init_database/init`
2. Create file in `./init_database/init/<db_name>/data-definition.sql`
3. Update file `./init_database/init_mysql.sh`

# Create tables and data

- update database in `./init_database/init/<db_name>/data-definition.sql`
