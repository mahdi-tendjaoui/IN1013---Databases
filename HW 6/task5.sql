-- 1
SELECT W1.first_name, W1.surname FROM restStaff W1 INNER JOIN restBill R1 ON W1.staff_no = R1.waiter_no WHERE cust_name = "Tanya Singh";
-- 2
SELECT R1.room_date FROM restRoom_management R1 INNER JOIN restStaff W1 ON R1.headwaiter=W1.staff_no WHERE first_name="Charles" AND room_name="Green"AND room_date LIKE "1602__"; 
-- 3
SELECT W1.first_name, W1.surname FROM restStaff W1 INNER JOIN restStaff W2 ON W1.headwaiter=W2.staff_no WHERE W1.headwaiter = (SELECT W1.headwaiter FROM restStaff W1 INNER JOIN restStaff W2 ON W1.headwaiter=W2.staff_no WHERE W1.first_name="Zoe" AND W1.surname="Ball");
-- 4
SELECT R1.cust_name, R1.bill_total, W1.first_name FROM restBill R1 INNER JOIN restStaff W1 ON R1.waiter_no=W1.staff_no ORDER BY bill_total DESC;
-- 5
SELECT DISTINCT W1.first_name, W1.surname FROM restBill R1 INNER JOIN restStaff W1 ON R1.waiter_no=W1.staff_no WHERE W1.headwaiter=(SELECT W1.headwaiter from restBill R1 INNER JOIN restStaff W1 ON R1.waiter_no=W1.staff_no WHERE bill_no="00014") OR W1.headwaiter=(SELECT W1.headwaiter from restBill R1 INNER JOIN restStaff W1 ON R1.waiter_no=W1.staff_no WHERE bill_no="00017");
-- 6
SELECT DISTINCT W1.first_name, W1.surname FROM restStaff W1 INNER JOIN restRoom_management R1 ON W1.staff_no=R1.headwaiter WHERE room_name="Blue" OR headwaiter=(SELECT headwaiter FROM restRoom_management WHERE room_name="Blue");