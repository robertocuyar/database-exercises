CREATE USER IF NOT EXISTS 'adlistadmin'@'localhost' IDENTIFIED BY 'adsareawesome';
GRANT ALL ON adlister_db.* TO 'adlistadmin'@'localhost';
SHOW GRANTS for 'adlistadmin'@'localhost';

DROP TABLE IF EXISTS users;
CREATE TABLE users(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    username VARCHAR(75) NOT NULL,
    email VARCHAR(75) NOT NULL,
    password VARCHAR(75) NOT NULL,
    PRIMARY KEY (id)
);

DROP TABLE IF EXISTS ads;
CREATE TABLE ads(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    user_id INT UNSIGNED NOT NULL ,
    title VARCHAR(75) NOT NULL,
    description TEXT,
    PRIMARY KEY (id),
    FOREIGN KEY (user_id) REFERENCES users(id)
);