## 2. Create a trigger that updates stock levels once a sale takes place

use MusicStore;
CREATE TRIGGER UpdateStock
AFTER INSERT ON OrderDetails 
FOR EACH ROW
  UPDATE Stock 
     SET CurrentStock = CurrentStock - NEW.QuantityOrdered
   WHERE ProductCode = NEW.ProductCode;


use MusicStore;
insert into Orders (orderNum,Costumer_ID,Employee_ID,Date_of_Order,Total,PaymentType) values
('O21','C01','E02','2018-08-15',532.80,'Cash');      ## to check if ith works, run this code 

use MusicStore;
insert into OrderDetails (OrderNum,ProductCode,QuantityOrdered,Price_each) values
('O21','P16',2,32.80),
('O21','P19',1,500.00);         ## to chectk if it works, run this code 



## 9.Create Trigger that wil populate a 'historyTable' once Costumers Contact details have been updated

use MusicStore;                          ## creating table to store history data
CREATE TABLE Costumers_audit ( 
	Costumer_id varchar(10),
    Phone varchar(13),  
    Address varchar(50), 
    City varchar(20), 
    County varchar(20), 
    changedon datetime,  
    action varchar(50),  
   primary key(Costumer_id)
 );


	DELIMITER $$                          ### Creating the triger that will populate history table 
CREATE TRIGGER before_Costumer_update 
    BEFORE UPDATE ON Costumers
    FOR EACH ROW BEGIN
 
    INSERT INTO Costumers_audit
    SET action = 'update',
		Costumer_id = OLD.Costumer_id,
		Phone = OLD.phone,
        Address = OLD.address,
        City = OLD.City,
        County = OLD.County,
        changedon = NOW(); 
END$$
DELIMITER ;


use MusicStore;               ## testing 
UPDATE Costumers
SET Phone = '089786543'
WHERE Costumer_id = 'C05';





















































