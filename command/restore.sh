#!/bin/bash
/usr/local/bin/docker exec -i flask_app-db-1 psql -U root -d db_flask < $1
