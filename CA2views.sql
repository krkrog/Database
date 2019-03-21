##### Creating Views #######


## 1. Show all transactions for ANY given week (you decide the dates)


use MusicStore;
CREATE VIEW All_transactions AS
SELECT Date_of_order,Total,PaymentType
FROM Orders
WHERE Date_of_order Between '2018-01-01' and '2018-06-01';

## 3. Create a view of all stock (grouped by the supplier)

use MusicStore;
CREATE VIEW Stock_by_Supplier AS
select * from Stock
order by SupplierName;

