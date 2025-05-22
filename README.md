# Quick reference

* Maintained by: [Websmurf](https://github.com/websmurf)
* Where to get help: [Discussions](https://github.com/websmurf/cloudsql-backup/discussions)

# Supported tags and respective Dockerfile links

* [1.0.1](https://github.com/websmurf/beanstalkd-docker/blob/main/Dockerfile)

# Quick reference (cont.)

* Where to file issues: https://github.com/websmurf/cloudsql-backup/issues

# What is this container?

This container is a backup solution for Google Cloud SQL databases through Google Cloud Run.
It is designed to be run as a cron job, and it will create a backup of your database and store it in Google Cloud Storage.

The container is based on the mysql 8 image. It expects a few environment variables to be set in order to work properly.
You can define them in the Variables & Secrets section of your Google Cloud Run service.

| Environment Variable | Description                                   |
|----------------------|-----------------------------------------------|
| `USERNAME`           | The username to connect to the database.      |
| `PASSWORD`           | The password to connect to the database.      |
| `CLOUDSQL`           | The CloudSQL instance to connect to.          |
| `DATABASE`           | The names of the databases you wish to backup |
| `STORAGE_PATH`       | The path where the backup will be stored      |

On execution, the container will generate a backup of the databases you've provided as a `backup-YYYYMMDD.sql` file.
