-- 1
SELECT SUM(bill_total) FROM restBill;
-- 2
SELECT SUM(bill_total) AS "Feb Income" FROM restBill WHERE bill_date LIKE "1602__";
-- 3
SELECT AVG(bill_total) FROM restBill WHERE table_no=2;
-- 4
SELECT MIN(no_of_seats) AS "Min", MAX(no_of_seats) AS "Max", AVG(no_of_seats) AS "Avg" FROM restRest_table WHERE room_name="Blue";
-- 5
SELECT DISTINCT SUM(table_no) FROM restBill WHERE waiter_no=002 OR waiter_no =004;