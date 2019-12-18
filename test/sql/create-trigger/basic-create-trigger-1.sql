CREATE TRIGGER cust_addr_chng
INSTEAD OF UPDATE OF cust_addr ON customer_address
WHEN cust_addr NOT NULL
BEGIN
  UPDATE customer
  SET cust_addr=new.cust_addr
  WHERE cust_id=new.cust_id;
END;
