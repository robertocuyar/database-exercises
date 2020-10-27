USE codeup_test_db;
SELECT 'ALBUMS AFTER 1991---------------' AS 'Section';
DELETE FROM albums WHERE release_date > 1991;
SELECT 'ALBUMS GENRE DISCO---------------' AS 'Section';
DELETE FROM albums WHERE genre = 'Disco';
SELECT 'ALBUMS BY WHITNEY HOUSTON---------------' AS 'Section';
DELETE FROM albums WHERE artist = 'Whitney Houston';
SELECT 'WHOLE LIST OF ALBUMS-----------------------------' AS 'Section';
SELECT * from albums;

