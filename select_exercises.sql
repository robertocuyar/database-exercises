USE codeup_test_db;
SELECT 'Albums by Pink Floyd' AS 'Section';
SELECT name FROM albums WHERE artist = 'Pink Floyd';
SELECT 'YEAR OF SGT. PEPPERS LONELY HEARTS CLUB BAND' AS 'Section';
SELECT release_date FROM albums WHERE name = 'Sgt. Pepper\'s Lonely Hearts Club Band';
SELECT 'GENRE OF NEVERMIND' AS 'Section';
SELECT genre FROM albums WHERE name = 'Nevermind';
SELECT 'THE 90s' AS 'Section';
SELECT name FROM albums WHERE release_date BETWEEN 1990 AND 2000;
SELECT 'LESS THAN 20 MIL SALES' AS 'Section';
SELECT name FROM albums WHERE sales < 20;
SELECT 'ROCK GENRES' AS 'Section';
SELECT name FROM albums WHERE genre = 'Rock';


