USE contacts;

SELECT 'Hello', 'World';
SELECT 'Hello' as FirstWord, 'World' as SecondWord;

SELECT p.person_last_name 
FROM 
person p
WHERE p.person_first_name = 'Jon'
OR
p.person_contacted_number > 0;

SELECT p.person_last_name 
FROM 
person p
WHERE p.person_contacted_number 
BETWEEN 1 AND 20;

SELECT DISTINCT p.person_first_name , p.person_last_name as FirstName 
FROM person p;

SELECT p.person_last_name 
FROM 
person p
WHERE p.person_first_name 
LIKE 'J%';

SELECT p.person_last_name
FROM person p
WHERE p.person_first_name
IN ('Jon','Fritz');

SELECT p.person_last_name
FROM
person p 
WHERE p.person_contacted_number 
IS NULL;

SELECT e.email_address_person_id, e.email_address
FROM
email_address e
WHERE
e.email_address_person_id IS NOT NULL;