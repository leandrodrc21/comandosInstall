#! /bin/sh
service mysql start;
mysql --user=root << EOF
CREATE USER 'admin'@'localhost' IDENTIFIED BY '134679';
FLUSH PRIVILEGES;
GRANT ALL PRIVILEGES ON *.* TO 'admin'@'localhost' WITH GRANT OPTION;
CREATE USER 'admin'@'%' IDENTIFIED BY '134679';
FLUSH PRIVILEGES;
GRANT ALL PRIVILEGES ON *.* TO 'admin'@'%' WITH GRANT OPTION;
DROP USER 'root'@'localhost';
EOF
