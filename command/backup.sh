#!/bin/bash

NOW=$(date +"%y%m%d")

/usr/local/bin/docker exec -t flask_app-db-1 pg_dumpall -U root > /Users/muh_ilhamfajar/workspace/pacmann/docker-project-1/postgres_backup/backup_${NOW}.sql
