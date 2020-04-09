USE contacts;

/* 
    CROSS JOIN: Do not do this at home or work or anywhere 
*/
    SELECT 
    p.person_first_name,
    p.person_last_name,
    e.email_address
    FROM 
    person p,
    email_address e

/* 
    (INNER) JOIN: Returns records that have matching values in both tables
*/
    SELECT 
    p.person_first_name,
    p.person_last_name,
    e.email_address
    FROM 
    person p
    INNER JOIN 
    email_address e
    ON
    p.person_id = e.email_address_person_id;

/* 
    LEFT (OUTER) JOIN: Returns all records from the left table, and the matched records from the right table
*/
    SELECT 
    p.person_first_name,
    p.person_last_name,
    e.email_address
    FROM 
    person p
    LEFT OUTER JOIN 
    email_address e
    ON
    p.person_id = e.email_address_person_id;

/* 
    RIGHT (OUTER) JOIN: Returns all records from the right table, and the matched records from the left table
*/
    SELECT 
    p.person_first_name,
    p.person_last_name,
    e.email_address
    FROM 
    person p
    RIGHT OUTER JOIN 
    email_address e
    ON
    p.person_id = e.email_address_person_id;

/* 
    FULL (OUTER) JOIN: Returns all records when there is a match in either left or right table
*/
-- below there is SQL way
    SELECT 
    p.person_first_name,
    p.person_last_name,
    e.email_address
    FROM 
    person p
    FULL OUTER JOIN 
    email_address e
    ON
    p.person_id = e.email_address_person_id
-- below there is MYSQL way
    SELECT 
    p.person_first_name,
    p.person_last_name,
    e.email_address
    FROM 
    person p
    LEFT OUTER JOIN 
    email_address e
    ON
    p.person_id = e.email_address_person_id
    UNION DISTINCT 
    SELECT 
    p.person_first_name,
    p.person_last_name,
    e.email_address
    FROM 
    person p
    RIGHT OUTER JOIN 
    email_address e
    ON
    p.person_id = e.email_address_person_id;

/* 
    SELF JOIN: A self JOIN is a regular join, but the table is joined with itself
*/
    SELECT A.CustomerName AS CustomerName1, B.CustomerName AS CustomerName2, A.City
    FROM Customers A, Customers B
    WHERE A.CustomerID <> B.CustomerID
    AND A.City = B.City
    ORDER BY A.City;