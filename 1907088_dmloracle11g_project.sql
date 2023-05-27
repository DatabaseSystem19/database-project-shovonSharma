
SELECT table_name
FROM user_tables;

-- Insert 10 entries into the customer table
--(customer_id, customer_name, customer_mobile, customer_email, customer_address)
INSERT INTO customer VALUES  (1, 'cus1', '1234', 'cus1@example.com', 'Address 1');
INSERT INTO customer VALUES  (2, 'cus2', '5678', 'cus2@example.com', 'Address 2');
INSERT INTO customer VALUES  (3, 'cus3', '9123', 'cus3@example.com', 'Address 3');
INSERT INTO customer VALUES  (4, 'cus4', '4567', 'cus4@example.com', 'Address 4');
INSERT INTO customer VALUES  (5, 'cus5', '8901', 'cus5@example.com', 'Address 5');
INSERT INTO customer VALUES  (6, 'cus6', '2345', 'cus6@example.com', 'Address 6');
INSERT INTO customer VALUES  (7, 'cus7', '6789', 'cus7@example.com', 'Address 7');
INSERT INTO customer VALUES  (8, 'cus8', '3210', 'cus8@example.com', 'Address 8');
INSERT INTO customer VALUES  (9, 'cus9', '7654', 'cus9@example.com', 'Address 9');
INSERT INTO customer VALUES  (10, 'cus10', '1098', 'cus10@example.com', 'Address 10');

-- Insert 10 entries into the staff table
--(staff_id, staff_name, staff_mobile, staff_address, staff_email, salary)
INSERT INTO staff VALUES   (1, 'staff1', '4321', 'Staff Address 1', 'staff1@example.com', 5000);  
INSERT INTO staff VALUES   (2, 'staff2', '8765', 'Staff Address 2', 'staff2@example.com', 6000);
INSERT INTO staff VALUES   (3, 'staff3', '2109', 'Staff Address 3', 'staff3@example.com', 5500);
INSERT INTO staff VALUES   (4, 'staff4', '6543', 'Staff Address 4', 'staff4@example.com', 4500);
INSERT INTO staff VALUES   (5, 'staff5', '0987', 'Staff Address 5', 'staff5@example.com', 7000);
INSERT INTO staff VALUES   (6, 'staff6', '5432', 'Staff Address 6', 'staff6@example.com', 4800);
INSERT INTO staff VALUES   (7, 'staff7', '9876', 'Staff Address 7', 'staff7@example.com', 5200);
INSERT INTO staff VALUES   (8, 'staff8', '3210', 'Staff Address 8', 'staff8@example.com', 5300);
INSERT INTO staff VALUES   (9, 'staff9', '7654', 'Staff Address 9', 'staff9@example.com', 5900);
INSERT INTO staff VALUES   (10, 'staff10', '1045', 'Staff Address 10', 'staff10@example.com', 5100);


-- Insert 10 entries into the food table
-- (food_id, food_name, food_price, food_status, food_description)
INSERT INTO food VALUES (1, 'Food1', 10, 1, 'Description 1');
INSERT INTO food VALUES (2, 'Food2', 15, 1, 'Description 2');
INSERT INTO food VALUES (3, 'Food3', 20, 1, 'Description 3');
INSERT INTO food VALUES (4, 'Food4', 12, 0, 'Description 4');
INSERT INTO food VALUES (5, 'Food5', 18, 1, 'Description 5');
INSERT INTO food VALUES (6, 'Food 6', 25, 1, 'Description 6');
INSERT INTO food VALUES (7, 'Food 7', 14, 0, 'Description 7');
INSERT INTO food VALUES (8, 'Food 8', 17, 1, 'Description 8');
INSERT INTO food VALUES (9, 'Food 9', 22, 1, 'Description 9');
INSERT INTO food VALUES (10, 'Food 10', 30, 0, 'Description 10');




-- Insert 10 entries into the customer_order table
-- (order_id, customer_id, order_date, order_status, bill, payment_status, staff_id)
INSERT INTO customer_order VALUES  (1, 1, TO_DATE('2023-05-27', 'YYYY-MM-DD'), 1, 100, 1, 1); 
INSERT INTO customer_order VALUES  (2, 2, TO_DATE('2023-05-27', 'YYYY-MM-DD'), 1, 80, 1, 2);
INSERT INTO customer_order VALUES  (3, 3, TO_DATE('2023-05-26', 'YYYY-MM-DD'), 0, 120, 0, 3);
INSERT INTO customer_order VALUES  (4, 4, TO_DATE('2023-05-26', 'YYYY-MM-DD'), 1, 90, 1, 4);
INSERT INTO customer_order VALUES  (5, 5, TO_DATE('2023-05-25', 'YYYY-MM-DD'), 1, 110, 0, 5);
INSERT INTO customer_order VALUES  (6, 6, TO_DATE('2023-05-25', 'YYYY-MM-DD'), 0, 95, 1, 6);
INSERT INTO customer_order VALUES  (7, 7, TO_DATE('2023-05-24', 'YYYY-MM-DD'), 1, 75, 1, 7);
INSERT INTO customer_order VALUES  (8, 8, TO_DATE('2023-05-24', 'YYYY-MM-DD'), 0, 105, 0, 8);
INSERT INTO customer_order VALUES  (9, 9, TO_DATE('2023-05-23', 'YYYY-MM-DD'), 1, 85, 1, 9);
INSERT INTO customer_order VALUES  (10, 10, TO_DATE('2023-05-23', 'YYYY-MM-DD'), 1, 115, 0, 10);


-- Insert 10 entries into the order_item table
--(item_id, order_id, food_id, quantity)
INSERT INTO order_item VALUES  (1, 1, 1, 2);
INSERT INTO order_item VALUES  (2, 1, 3, 1);
INSERT INTO order_item VALUES  (3, 2, 2, 1);
INSERT INTO order_item VALUES  (4, 2, 4, 3);
INSERT INTO order_item VALUES  (5, 3, 5, 2);
INSERT INTO order_item VALUES  (6, 3, 7, 1);
INSERT INTO order_item VALUES  (7, 4, 6, 1);
INSERT INTO order_item VALUES  (8, 4, 9, 2);
INSERT INTO order_item VALUES  (9, 5, 8, 2);
INSERT INTO order_item VALUES  (10, 5, 10, 1);



