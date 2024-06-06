--- this queery retrieves the names and positions of employees who holds the the title " Hair Stylist"
--- it works and returns every employee with that poistion 


SELECT Name, Position
FROM Employee
WHERE Position = 'Hair Stylist';
--------------------------------------------------------------------------------------------------

--- this queery fetches the names of customers with the types of services they have booked by joining
--- the customer table and the service
--- It works fine and returns all of them with one service because i hard coded them all to one service

SELECT c.Name AS CustomerName, s.Type AS ServiceType
FROM Customer c
JOIN Service s ON c.idService = s.idService;
---------------------------------------------------------------------------------------------------


--- this queery finds the names and prices of hairstyles that have prices higher than the average price
--- It works fine

SELECT Style, Price
FROM Hairstyle
WHERE Price > (SELECT AVG(Price) FROM Hairstyle);
-------------------------------------------------------------------------------------------------

--- the next queery counts the number of hairstyles for each employee by grouping the Hairstyle table based on the idEmployee field
--- It works and returns employee id with number of hairstyles they have

SELECT idEmployee, COUNT(*) AS HairstyleCount
FROM Hairstyle
GROUP BY idEmployee;
-----------------------------------------------------------------------------------------------------------

--- This queery adds our beloved Sam Snead to the Employee table
--- It works great

INSERT INTO Employee (Name, Position)
 VALUES ('Sam Snead', 'Receptionist');
 -----------------------------------------------------------------------------------------------------------
 
 --- This queery deletes the service with the assigned id
 --- it works
 
 DELETE FROM Service WHERE idService = 3;
--------------------------------------------------------------------------------------------------------

--- This queery is made to upddate employee id, but doesnot work due to the foreign key constraint on update

UPDATE Employee SET idEmployee = 25 WHERE idEmployee = 5;

--------------------------------------------------------------------------------------------------------


--- this queery deletes a customer from the customer table 
--- it works if you delete a customer here thy will also be deleted on the customer_has_service table

DELETE FROM Customer WHERE idCustomer = 18;

---------------------------------------------------------------------------------------------------------

 
 
 







