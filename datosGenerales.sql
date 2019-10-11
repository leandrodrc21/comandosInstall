CREATE DATABASE miphp CHARACTER SET utf8 COLLATE utf8_general_ci;
CREATE USER 'php'@'localhost' identified by '123qwe';
GRANT ALL PRIVILEGES ON miphp.* TO php@localhost;
FLUSH PRIVILEGES;
exit;
