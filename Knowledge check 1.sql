/*--==========================================================
Name: Florence
Knowledge check 1
Due Date: 08/10/2019
Please run your query against the AdventureWorks2014 database, and 
please ensure that your query run and able to return record.



--============================================================*/

/*Question 1 
Please return all the records in the [Person].[Person] table
*/

---Q1

SELECT * 
FROM PERSON.PERSON

----Contains 19, 972 rows



/* Question 2 
Using your answer from question 1, please return the first name, last name
and middle name from the person.person
*/

---Q2

SELECT firstname, lastname, middlename
FROM PERSON.PERSON

----Contains 19, 972 rows


/*Question 3 
Return all the records from the [Person].[CountryRegion] where
the name is Australia and order your result by CountryRegionCode 
in a descending order
*/

---Q3

SELECT * FROM PERSON.CountryRegion
WHERE Name = 'Australia'

 ----Returns 1 Row



/* Question 4 
 As a data analyst you have been task by your 
 manager to return the currencycode and name from 
 the [Sales].[Currency] table. It is important that 
 as part of the request that you return only the name
 names that is Naira
*/
 
 ---Q4

 Select CurrencyCode, name 
 From Sales.Currency
 Where name = 'Naira'

 ----no data in the currency code named naira


/* Question 5 
Please return all the records from the person.address table
*/

---Q5

Select * from person.Address

-----Returns 19614 rows


/* Question 6 
Using your code from question 5, please return only the city, postal code,
and the address ID
*/

----Q6

SELECT City, postalcode, addressid from person.Address

-----It returned 19,614 rows



/* Question 7 
It is the holiday season and your manager wants you to write a code
that will return all the records from the humanresource.employees table.
*/

---Q7

SELECT * FROM Humanresources.Employee

-----290 Rows



/* Question 8 
Using the answer you got from question 7, your manager now wants your to
only display the jobtitle, the birthdate, the vacation hours
and their sick leave hours of the employees.
*/

-----Q8

SELECT JobTitle, birthdate, vacationhours, SickLeaveHours FROM Humanresources.Employee

-----Returned 290 rows

 /*Question 9 - The table is directly about this question. This is to trick you and you fell. 
				I will give you this as  because your syntax are 
Return the JobTitle ,BirthDate ,MaritalStatus, Gender from the
employee table that are married and gender is female 
*/

---Q9

SELECT jobtitle, birthdate, maritalstatus, 
FROM Employee
Where gender = 'Female'

----Syntax error, there is no table such as Employee

/*Question 10 
You have been task to write a query that will return the 
SalesOrderID,SalesOrderNumber,PurchaseOrderNumber
,CustomerID,SalesPersonID,SubTotal,TaxAmt,TotalDue
from the sales.SalesOrderHeader table for those that have
total due grater than 500
*/

SELECT SalesOrderNumber, SalesOrderID, PurchaseOrderNumber, CustomerID, SalesPersonID, SubTotal, TaxAmt, TotalDue [>500]
FROM Sales.SalesOrderHeader
Where TotalDue > 500

---Q10

----Returns 18,547 rows

/* Question 11 , I will not provide the solution because I will add it into the next homework.
					Hint, we already did this in class
You work for a manufacturing company and the directors are about
to make a decision on designing of a new product, 
they will like you to check in the production.product table to see if the 
product names listed below exists in the database
	Chainring Nut
	Chain Stays
	Touring End Caps
	Flat Washer 1
*/

----Q11

SELECT * FROM PRODUCTION.Product



----Returned 504 rows and Yes those name are in the database; Chaining Nut (321), chain stays (324) Touring End Caps and Flat Washer 1 (341)

/*Question 12 
The festive period is here and your company will like you to 
keep track of the inventory of the company. Your manager wants
 you to generate a dataset that will display the product ID, 
 shelf and quantity from the product.productinventory table. 
*/

----Q12

Select PRODUCTID, SHELF, QUANTITY From Product.Productinventory

-----there is no such table as product


