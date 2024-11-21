-- 1
SELECT * FROM restBill WHERE cust_name="Bob Crow";
-- 2
SELECT cust_name FROM restBill WHERE cust_name LIKE "%Smith" ORDER BY cust_name DESC;
-- 3
SELECT DISTINCT cust_name FROM restBill WHERE cust_name LIKE "% C%";
-- 4
SELECT DISTINCT R1.first_name, R1.surname FROM restStaff R1 INNER JOIN  restStaff R2 ON R1.staff_no = R2.headwaiter;
-- 5
SELECT * FROM restBill WHERE bill_date LIKE "1602__";
-- 6
SELECT DISTINCT bill_date FROM restBill WHERE bill_date LIKE "16%" ORDER BY bill_date ASC;