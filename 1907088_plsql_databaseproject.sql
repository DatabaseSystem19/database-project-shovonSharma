--Design a PL/SQL block that calculates the average salary of all staff members and displays it.
set serveroutput on
DECLARE
  v_avg_salary NUMBER;
BEGIN
  SELECT AVG(salary) INTO v_avg_salary
  FROM staff;
  DBMS_OUTPUT.PUT_LINE('Average Salary: ' || v_avg_salary);
END;

--write a pl/sql code that achieves similar result as on update cascade
set serveroutput on
CREATE OR REPLACE TRIGGER update_orders_trigger
BEFORE UPDATE ON customer
FOR EACH ROW
BEGIN
  UPDATE customer_order
  SET customer_id = :NEW.customer_id
  WHERE customer_id = :OLD.customer_id;
END;

--Write a PL/SQL block that uses a cursor to retrieve the names of all staff members from the staff table and displays them
DECLARE
  CURSOR staff_cursor IS
    SELECT staff_name FROM staff;
  v_staff_name staff.staff_name%TYPE;
BEGIN
  OPEN staff_cursor;
  LOOP
    FETCH staff_cursor INTO v_staff_name;
    EXIT WHEN staff_cursor%NOTFOUND;
    DBMS_OUTPUT.PUT_LINE('Staff Name: ' || v_staff_name);
  END LOOP;
  CLOSE staff_cursor;
END;

--Create a PL/SQL function called get_order_count that accepts a customer ID as input and returns the count of orders placed by that customer

CREATE OR REPLACE FUNCTION get_order_count(p_customer_id IN NUMBER) RETURN NUMBER IS
  v_order_count NUMBER;
BEGIN
  SELECT COUNT(*) INTO v_order_count
  FROM customer_order
  WHERE customer_id = p_customer_id;
  
  RETURN v_order_count;
END;

--Write a PL/SQL procedure called calculate_discount that takes the total bill amount as input and calculates a 10% discount on it. Display the discounted amount.

CREATE OR REPLACE PROCEDURE calculate_discount(p_bill_amount IN NUMBER) IS
  v_discounted_amount NUMBER;
BEGIN
  v_discounted_amount := p_bill_amount - (p_bill_amount * 0.1);
  DBMS_OUTPUT.PUT_LINE('Discounted Amount: ' || v_discounted_amount);
END;

