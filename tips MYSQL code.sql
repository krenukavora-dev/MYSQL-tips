SELECT * FROM tip
WHERE day= 'Sun' AND smoker= 'Yes';
SELECT * from tip
WHERE tip>5 AND total_bill <25;
SELECT * FROM tip
WHERE SEX = 'Female' AND time = ' Dinner';
SELECT * FROM tip
WHERE size >= 4 AND day = 'Sat';
SELECT * FROM tip
ORDER BY total_bill DESC
LIMIT 10;
SELECT * FROM tip
WHERE day = 'Fri'
ORDER BY tip ASC
LIMIT 5;
SELECT * FROM tip
WHERE tip BETWEEN 3 AND 6
AND smoker = 'No';
SELECT * FROM tip
LIMIT 10;
SELECT * FROM tip
LIMIT 10 OFFSET 10;
SELECT * FROM tip
WHERE total_bill >40
ORDER BY tip DESC
LIMIT 5;
SELECT * FROM tip
WHERE time = 'Lunch'
AND tip>(total_bill * 0.20);
SELECT COUNT(*) AS total_records FROM tip;
SELECT AVG(total_bill) AS avg_total_bill FROM tip;
SELECT SUM(tip) AS total_tips FROM tip;
SELECT MAX(tip) AS max_tip, MIN(tip) AS min_tip FROM tip;
SELECT sex, AVG(tip) AS avg_tip
FROM tip
GROUP BY sex;
SELECT smoker, COUNT(*) AS count
FROM tip
GROUP BY smoker;
SELECT day, AVG(total_bill) AS avg_total_bill
FROM tip
GROUP BY day;
SELECT day, SUM(tip) AS total_tips
FROM tip
GROUP BY day
ORDER BY total_tips DESC;
SELECT day, AVG(tip / total_bill * 100) AS avg_tip_percentage
FROM tip
GROUP BY day;
SELECT day, time, AVG(size) AS avg_party_size
FROM tip
GROUP BY day, time;