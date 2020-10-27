USE codeup_test_db;
DROP TABLE IF EXISTS albums;
CREATE TABLE albums(
id INT UNSIGNED NOT NULL AUTO_INCREMENT,
artist varchar(75) NOT NULL,
name varchar(75) DEFAULT 'NONE',
release_date INT UNSIGNED NOT NULL,
sales FLOAT NOT NULL,
genre varchar(75) NOT NULL,
PRIMARY KEY (id)
);