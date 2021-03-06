/* file to create user table in snaglog database */
USE snaglog;

/* remove the table if it exists */
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS user_roles;

/* create the new table 'users' */
CREATE TABLE users (
  first_name CHAR(30) NOT NULL,
  last_name CHAR(30) NOT NULL,
  user_name CHAR(30) NOT NULL,
  user_pass CHAR(30) NOT NULL,
  PRIMARY KEY (user_name)
);

/* peek at the table */
DESC users;

/* create some test users */
INSERT INTO users (first_name, last_name, user_name, user_pass) VALUES ('Admin', 'Person', 'adminUser', 'admin');
INSERT INTO users (first_name, last_name, user_name, user_pass) VALUES ('Contributor', 'Person', 'contributorUser', 'contributor');

/* use a 'select' to test if it worked */
SELECT * FROM users;


create table user_roles (
 user_name CHAR(30) not null,
 role_name CHAR(30) not null,
 primary key (user_name, role_name)
);

/* peek at the table */
DESC user_roles;

/* create some test roles for the previously added users */
INSERT INTO user_roles (user_name, role_name) VALUES ('adminUser', 'admin');
INSERT INTO user_roles (user_name, role_name) VALUES ('contributorUser', 'contributor');

/* use a 'select' to test if it worked */
SELECT * FROM user_roles;

