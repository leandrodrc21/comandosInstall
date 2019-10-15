#! /bin/sh
PASSWORD="${2}"
mysql -u root -p << EOF
CREATE USER 'admin'@'localhost' IDENTIFIED BY '134679';
GRANT ALL PRIVILEGES ON *.* TO 'admin'@'localhost' WITH GRANT OPTION;
CREATE USER 'admin'@'%' IDENTIFIED BY '134679';
GRANT ALL PRIVILEGES ON *.* TO 'admin'@'%' WITH GRANT OPTION;
DROP USER 'root'@'localhost';
create database IF NOT EXISTS  miphp;
CREATE USER IF NOT EXISTS  'admin'@'localhost' identified by PASSWORD;
GRANT ALL PRIVILEGES ON miphp.* TO php@localhost;
FLUSH PRIVILEGES;
use miphp;
CREATE TABLE  IF NOT EXISTS clientes (id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, nombre VARCHAR(30), apellido VARCHAR(30), suscripcion_activa CHAR(1), vencimiento_contrato DATE);
EOF
