SELECT postalzip 'Código postal', region 'Región', country 'País' FROM myTable;
SELECT phone FROM myTable WHERE phone LIKE '(811)%';
SELECT * FROM myTable WHERE country = 'Spain' OR country = 'Italy';
SELECT COUNT(*) FROM myTable;
SELECT region, country, postalZip FROM myTable WHERE id IN (SELECT id FROM myTable WHERE country = 'Germany' OR country = 'Turkey');
SELECT MIN(id), MAX(id) FROM myTable;
SELECT COUNT(id) AS 'Nº de registros', country 'País' FROM myTable GROUP BY country;
SELECT postalZip FROM myTable ORDER BY postalZip LIMIT 10;
DELETE FROM myTable WHERE country = 'Singapore';
UPDATE myTable SET country='España' WHERE country='Spain';