                             #############################
                             #                           #
							 #       DATABASE CA2        #
                             # RETAIL MODEL -MUSIC STORE #        
                             #                           #
                             # STUDENT - KRISTIJAN KROG  #
                             #############################
#___________________________________________________________________________________________#

create Database MusicStore;        #CREATING DATABASE        

use MusicStore;
create table Costumers(           #CREATING TABLE FOR COSTUMERS
	Costumer_Id varchar (10),
    CostumerFName varchar(30),
    CostumerLname varchar(30),
    Phone varchar (13),
    Address varchar (50),
    City varchar (20),
    County varchar(20),
		primary key(Costumer_Id)        #DEFINING PRIMARY KEY
    );
    
    
  create table Employees(              #CREATING EMPLOYEES TABLE
	Employee_ID varchar(10),
    Fname varchar (30),
    Lname varchar (30),
    Employee_Address varchar (50),
    Employee_City varchar (20),
    Employee_County varchar (20),
    Employee_Email varchar (40),
    Position varchar (20),
		primary key(Employee_ID)     #DEFINING PRIMARY KEY 
	);
use MusicStore;
create table Orders(                 #CREATING TABLE ORDERS
	orderNum varchar (30),
    Costumer_ID varchar (10),
    Employee_ID varchar (10),
    Date_of_order date,
    Total numeric (8,2),
    PaymentType varchar(20),
		primary key(orderNum)      #DEFINING PRIMARY KEY 
	);

use MusicStore;
create table OrderDetails(          #CREATING TABLE ORDER DETAILS
		orderNum varchar (30),
        ProductCode varchar (10),
        QuantityOrdered integer (4),
        Price_each numeric (6,2),
			primary key (OrderNum,ProductCode)   ## PRIMARY COMPOSITE KEY To ASSURE UNIQE VALUE
			
		);
    
    
    
create table Stock(                       # CREATING TABLE STOCK
		ProductCode varchar(10),
        ProductName varchar(30),
        CurrentStock integer(4),
        SupplierName varchar(30),
        BuyingPrice numeric(9,2),
			primary key(ProductCode)     #DEFINING PRIMARY KEY
            );
		
create table Returns(                   #CREATING TABEL RETURNS
	Return_ID varchar (10),
    Costumer_ID varchar (10),
    ProductCode varchar (10),
    Money_returned numeric (8,2),
    Date_of_return date,
    Comment varchar(50),
		primary key(Return_ID)       #DEFINING PRIMARY KEY
	);
    
    
    create table Suppliers(        #CREATING TABLE SUPPLIERS
		SupplierName varchar (30),
        Supplier_City varchar (20),
        Supplier_Eir_Code varchar (20),
        Supplier_Email varchar (30),
        Supplier_Phone varchar(20),
			primary key (SupplierName)   #DEFINING PRIMARY KEY
		);
        
	
################################################################################################################    
    
    