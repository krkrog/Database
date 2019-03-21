use MusicStore;

insert into Costumers (Costumer_Id,CostumerFname,CostumerLname,Phone,Address,City,County) values 
('C01','Brad','Pitt','0894583543','Doom Park','Galway','Co.Galway'),
('C02','Bradley','Cooper','0894583344','Doom valley','Kilcock','Co.Kildare'),
('C03','Elon','Musk','0834543543','Roselawn','Naas','Co.Kildare'),
('C04','Angela','Merkel','0854563542','Sillicon Valley','Blessington','Co.Wicklow'),
('C05','Jenifer','Aniston','0874583534','Hollywood hills','Kilcullen','Co.Meath'),
('C06','Vladimir','Putin','0834583556','Nikolajev sq','Dublin','Co.Dublin'),
('C07','Bill','Gates','08945834546','Balymoore estuce','Cork','Co.Cork'),
('C08','Patricia','Lopez','0834583545','Roselawn','Newbridge','Co.Kildare'),
('C09','Beyonce','Knowels','0844586542','Star street','Athagrvan','Co.Wicklow'),
('C10','Whitney','Heuston','0894586754','Disney park','Nenagh','Co.Tipperary');

use MusicStore;
insert into Employees (Employee_ID,Fname,Lname,Employee_address,Employee_City,Employee_County,Employee_Email,Position) values
('E01','John','Jones','Fightstreet','Dublin','Co.Dublin','JohnJones@UFC.com','SalesRep'),
('E02','Bon','Iver','Singstreet','Lucan','Co.Dublin','BonIver@sing.com','SalesRep'),
('E03','Chris','Cornell','Guitarstreet','Naas','Co.Kildare','ChrisCor@Fo.com','SalesRep'),
('E04','Kristijan','Krog','RoseLawn','Galway','Co.Galway','krapkrog@NCI.com','Store Manager'),
('E05','Elena','Barba','Roosevelt','Cork','Co.Cork','Elenaninas@cooco.com','HR'),
('E06','Melanie','Griffith','Act street','Dublin','Co.Dublin','MellBell@act.com','CostumerService');

use MusicStore;
insert into Stock (ProductCode,ProductName,CurrentStock,SupplierName,BuyingPrice) values
('P01','Fender Telecaster','20','Fender',459.90),
('P02','Fender Stratocaster','25','Fender',559.90),
('P03','MusicMan px60','34','MusicMan',420.90),
('P04','MusicManp40','43','MusicMan',430.90),
('P05','Voxamp30w','25','Fender',559.90),
('P06','Fenderamp60','17','Fender',399.90),
('P07','Ibanez j600','15','Ibanez',259.89),
('P08','Ibanez j9000','37','Ibanez',329.90),
('P09','IbanezflyV','7','Ibanez',329.90),
('P10','Jacksonflyv','23','JacksonFactory',339.90),
('P11','PickupIbanez','20','Ibanez',50.90),
('P12','PickupFender','56','Fender',59.90),
('P13','FenderStrings11','80','Fender',5.90),
('P14','FenderStrings12','64','Fender',5.90),
('P15','FenderStrings13','72','Fender',6.90),
('P16','FenderStringsAC','67','Fender',5.90),
('P17','FenderAcousticpj300','57','Fender',239.90),
('P18','BossMultieffect','42','MusicMan',159.90),
('P19','Drybell Unit67','44','Ibanez',300.00),
('P20','Drybell 2','20','Ibanez',229.00),
('P21','GretchDrum','21','JacksonFactory',759.90),
('P22','YamahaDrum','13','JacksonFactory',599.00),
('P23','Pick10mm','1563','Fender',0.10),
('P24','Pick12mm','1704','Fender',0.10),
('P25','Pick08mm','1254','Fender',0.10),
('P26','Trumpet','21','Stringlife',159.80),
('P27','Saxsophone','31','Stringlife',200.90),
('P28','Trombone','12','Stringlife',214.90),
('P29','Violine','30','Stringlife',159.90),
('P30','El.Violine','10','Stringlife',259.90),
('P31','Drumming for dummies','32','Stringlife',10.50),
('P32','Music Theory v1','43','Stringlife',10.90);

use MusicStore;
insert into Suppliers (SupplierName,Supplier_City,Supplier_Eir_Code,Supplier_Email,Supplier_Phone) values
('Fender','Dublin','D02 FX54','fender@factory.ie','01 234 456'),
('MusicMan','Cork','C02 GX76','musicman@factory.ie','04 342 076'),
('Ibanez','Belfast','B45 GR89','ibanez@factory.ie','09 675 894'),
('JacksonFactory','Limerick','L32 KF54','jackson@factory.ie','07 774 886'),
('Stringlife','Wexford','W02 DG55','stringlife@factory.ie','05 564 456');
use MusicStore;
insert into Orders (orderNum,Costumer_ID,Employee_ID,Date_of_Order,Total,PaymentType) values
('O01','C02','E03','2018-01-01',1350.49,'Cash'),
('O02','C01','E01','2018-01-13',507.50,'Card'),
('O03','C03','E01','2018-01-31',372.00,'Cheque'),
('O04','C04','E01','2018-02-01',1250.00,'Card'),
('O05','C06','E02','2018-02-01',1402.49,'Card'),
('O06','C05','E03','2018-02-11',1599.99,'Cash'),
('O07','C07','E02','2018-02-15',1300.00,'Card'),
('O08','C08','E01','2018-03-01',1200.00,'Cash'),
('O09','C09','E05','2018-03-16',28.50,'Card'),
('O10','C10','E03','2018-03-25',320.10,'Cheque'),
('O11','C01','E01','2018-04-12',320.10,'Cash'),
('O12','C02','E01','2018-04-14',1670.20,'Card'),
('O13','C02','E02','2018-05-19',650.00,'Cash'),
('O14','C05','E02','2018-06-14',321.10,'Cash'),
('O15','C07','E02','2018-06-15',400.00,'Cheque'),
('O16','C04','E03','2018-07-19',340.50,'Card'),
('O17','C09','E03','2018-08-15',260.60,'Cheque'),
('O18','C10','E01','2018-09-01',16.40,'Cash'),
('O19','C02','E02','2018-11-06',1575.00,'Card'),
('O20','C03','E03','2018-12-25',27.00,'Cash');
use MusicStore;
insert into OrderDetails (OrderNum,ProductCode,QuantityOrdered,Price_each) values
('O01','P01',1,599.99),
('O01','P05',1,750.50),
('O02','P19',1,500.00),
('O02','P24',5,1.50),
('O03','P32',1,22.50),
('O03','P17',1,345.00),
('O03','P24',3,1.50),
('O04','P26',1,250.00),
('O05','P03',1,599.99),
('O05','P05',1,750.00),
('O05','P13',2,15.00),
('O05','P32',1,22.50),
('O06','P05',1,599.99),
('O07','P29',1,300.00),
('O08','P21',1,1200.00),
('O09','P23',4,1.50),
('O09','P32',1,22.50),
('O10','P27',1,320.10),
('O11','P27',1,320.10),
('O12','P01',1,650.00),
('O12','P22',1,1020.20),
('O13','P01',1,650.00),
('O14','P28',1,320.10),
('O15','P30',1,400.00),
('O16','P20',1,340.50),
('O17','P18',1,260.60),
('O18','P16',1,16.40),
('O19','P21',1,1200.00),
('O19','P31',1,30.00),
('O19','P17',1,345.00),
('O20','P24',15,1.80);

use MusicStore;
insert into Returns (Return_ID,Costumer_ID,Productcode,Money_returned,Date_of_return,Comment) values
('R01','C04','P20',340.50,'2018-07-20','Not Happy with product'),
('R02','C02','P01',650.00,'2018-05-21','Not Happy with product'),
('R03','C06','P05',340.50,'2018-02-05','Amp making sounds'),
('R04','C03','P03',22.50,'2018-02-04','Not finding the book usefull');
























