

## Wordpress Link
[Click to visit the deployed site](http://20.54.37.113/)

## kustomization.yaml
Indexes the files necessary to create a wordpress and mysql container. Contains a reference to mysql-deployment.yaml and wordpress-deployment.yaml which is then executed as seen under "Deployment instructions"

## mysql-deployment.yaml
This markup file contains the instructions for a MySQL container deployment. The MySQL container claims and mounts a persistent volume at /var/lib/mysql. The MYSQL_ROOT_PASSWORD environment variable sets the database password from the Secret.

## wordpress-deployment.yaml
This markup file contains the instructions for a Wordpress container deployment. The WordPress container claims and mounts a persistent volume at /var/www/html. The WORDPRESS_DB_HOST environment variable sets the name of the MySQL Service defined previously, which Wordpress then connects to. The WORDPRESS_DB_PASSWORD environment variable sets the database password from the Secret kustomize generated.

# Deployment instructions
First, follow the tutorial in EduNet to set up the environment needed for terminal interaction with AKS and set up the preconditions. Afterwards navigate to the folder containing all three of the previously mentioned files.
Then execute following command inside that folder:
```bash
kubectl apply -k ./
```
--- DONE ----

# Sources
This project is based on [THIS](https://kubernetes.io/docs/tutorials/stateful-application/mysql-wordpress-persistent-volume/) tutorial.