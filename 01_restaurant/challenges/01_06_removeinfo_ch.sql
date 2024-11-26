-- Remove incorrect information from the database.

-- A customer named Norby has notified us he won't 
-- be able to keep his Friday reservation. 
-- Today is July 24, 2022.

SELECT * FROM Customers
WHERE FirstName = 'Norby';

SELECT * FROM Reservations
WHERE CustomerId = 64;

SELECT * FROM Reservations as R 
JOIN Customers as C ON R.CustomerId = R.CustomerId
WHERE C.FirstName = 'Norby'
AND R.Date > '2022-07-24'

DELETE FROM Reservations WHERE ReservationID = 2000;