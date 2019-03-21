

## 4. Detail and total all sales for the year, group these by each month.(a group by with rollup)

use MusicStore;                 ####### GETTOTALFOR_Month
DELIMITER //
CREATE PROCEDURE GetTotalFor_month(IN month_in int(2))
 BEGIN
 SELECT coalesce(Date_of_order,'Total') as Date_of_order,sum(total)
 FROM Orders
 WHERE month(Date_Of_order) = Month_in
 GROUP BY Date_of_order with rollup;
 END //
DELIMITER ;     ## in this case you van pass a month parameter and view for each month individualy




Use MusicStore;              ## 4. Stored procedure - Detail and total sales for the year, group by each month
Delimiter //
Create procedure TotalFortheYear()
begin
SELECT coalesce (Date_Of_Order,'GrandTotal') AS Date_Of_order, Sum(Total) as Total
FROM Orders
GROUP BY Date_of_order WITH ROLLUP;
End//




use MusicStore;                    ##Create Stored procedure that will display all orders by costumer and their County
delimiter //
create procedure Orders_Costumers_byCounty()
Begin
SELECT Orders.orderNum, Orders.Costumer_ID, Costumers.CostumerFname, Costumers.CostumerLname, Costumers.County
FROM Orders
Inner JOIN Costumers ON Orders.Costumer_ID = Costumers.Costumer_ID
order by Costumers.County;
END//




use MusicStore;        ## Create a stored procedure that will display all returns grouped by month
Delimiter //
create procedure ReturnsByMonth()
begin
Select * from Returns
Order by month(Date_of_return);
END//



use MusicStore;                 ####### Display a specific costumers details and all the relvant orders to date
DELIMITER //                     #### by passing a parameter
CREATE PROCEDURE CostumersOrders(IN Id varchar(10),IN month_in int(2))
 BEGIN
 SELECT * from ((Costumers
 inner join orders on costumers.costumer_id = orders.costumer_id )    ## Join Costumers and orders
 inner join OrderDetails on orderDetails.orderNum = orders.OrderNum)  ## Join Orders and orderdetails
 WHERE Costumers.Costumer_ID = Id and month(Date_Of_order) = Month_in;
 END ;























