# Linux and Container Project
As an aspiring Software & Data Engineer, I will tackle the challenge of successfully deploying a web application I've created in the Final Project Fundamental Web Development, using Docker as the primary deployment tool, crafting two necessary images: one for the Flask application, another for the PostgreSQL database, with the Flask app reliant on the database connection. In addition, I'm responsible for establishing daily automatic backups for the PostgreSQL database, securing data integrity and reliability, and developing a specific script for rapid data restoration in case of database failures or damage, thereby utilizing and enriching your understanding of web application deployment, Docker usage for containerized applications, PostgreSQL database management, and data security through backup and restoration.

---

## Here are the my steps:
1. **Prepare flask app and create dockerfile**

    1.1. Create folder `/flask_app`.

    1.2. Place web flask application there.

    1.3. Dockerize flask using [Dockerfile].

2. **Combine postgresql and flask app**
   
   2.1. Create file for docker compoase here [docker-compose.yaml].

   2.2. Setup postgresql first.

   ![alt text][setup_posgres]

   2.3. Setup flask app that have dependency to postgresql.
   ![alt text][setup_flask]

   2.4. Don't forget to expose the port, so we can open locally. Please pay attention for "ports" in [docker-compose.yaml]. From the example, I can access postgres in my PC using port `5433` and flask in `5001`.

   2.5 Run command `docker-compose up` inside folder `flask_app`

   ![alt text][dockerize_services]

   ![alt text][test_web]

   ![alt text][test_db]

3. **Create backup**

    3.1. Create backup script. You can see here for [backup script].

    3.2. Open cron setting by using command `crontab -e`

    3.3. Add the following line in the bottom of text editor.

    ```
    0 0 * * * /bin/bash /Users/muh_ilhamfajar/workspace/pacmann/docker-project-1/command/backup.sh
    ```

    3.4. Result for [example backup script].

4. **Restore the DB**
   
   4.1. Create [restore script].

   4.2. If you want to run the restore script. You can try this command.
   ```
   command/restore.sh postgres_backup/backup.sql
   ```
   Please change the second argument using your sql file.


[Dockerfile]: flask_app/Dockerfile
[docker-compose.yaml]: flask_app/docker-compose.yaml
[setup_posgres]: images/setup_postgres.png
[setup_flask]: images/setup_flask.png
[test_web]: images/test_run_web.png
[dockerize_services]: images/dockerize_services.png
[test_db]: images/test_run_db.png
[backup script]: /command/backup.sh
[example backup script]: /postgres_backup/backup.sql
[restore script]: /command/restore.sh