# kubernete_wordpress_postgresql
This is a demo to build a [wordpress](https://wordpress.org/) based on [Postgresql](https://www.postgresql.org/) and use [redis](https://redis.io/) as cache to boost website access which based on the [kubernete](https://kubernetes.io/).

## Directory Descritption
### image: This is the building process about wordpress running based on the postgresql.  
### k8s_yaml: kubernete yaml files
### tools: This project dosn't depend on this directory. They are what I script tools help me to debug when I built this project.

## building instruction
```
cd k8s_yaml && sh restart.sh
```
