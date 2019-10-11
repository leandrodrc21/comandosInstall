#! /bin/sh
mysql -u root -p 12345689 
mysql> CREATE USER 'php'@'localhost' identified by '123qwe';
mysql> GRANT ALL PRIVILEGES ON miphp.* TO php@localhost;
mysql> FLUSH PRIVILEGES;
mysql> exit;