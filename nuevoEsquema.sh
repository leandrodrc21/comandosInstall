#! /bin/sh
mysql -u $USER -p$PASSWORD << EOF
uninstall plugin validate_password;
create database IF NOT EXISTS  miphp;
CREATE USER IF NOT EXISTS  'php'@'localhost' identified by 'LamcZUxM0F';
GRANT ALL PRIVILEGES ON miphp.* TO php@localhost;
FLUSH PRIVILEGES;
use miphp;
CREATE TABLE  IF NOT EXISTS clientes (id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, nombre VARCHAR(30), apellido VARCHAR(30), suscripcion_activa CHAR(1), vencimiento_contrato DATE);
EOF
