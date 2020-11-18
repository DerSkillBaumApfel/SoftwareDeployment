# Lab 3

In diesem Repository werden Docker Container mit Wordpress und MySql erstellt.

## Teil 1

Wenn im Ordner 

> docker-compose up

ausgeführt wird, werden ein Wordpress und ein MySql basierend auf den Standardimages gebaut.

## Teil 2

Wenn im Ordner 

> docker-compose up

ausgeführt wird, werden folgende Container erstellt:

### mysql
Ein Container mit einer MySql Datenbank, in welchem einen User für Wordpress angelegt und welcher dann über
0.0.0.0 mit dem Standardport 3306 für andere Container freigegeben wird.

### wp
Ein Container der Wordpress downloadet, konfiguriert und vom hosting Ordner aus über den Port 80 bereitstellt.
