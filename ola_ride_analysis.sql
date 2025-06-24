Create Database Ola;
Use Ola;

show tables;

select count(*) from bookings;

desc bookings;

-- QUESTIONS:

-- 1. Retrieve all successful bookings:
SELECT COUNT(*) FROM BOOKINGS
WHERE BOOKING_STATUS='SUCCESS';

-- 2. Find the average ride distance for each vehicle type
SELECT  VEHICLE_TYPE,AVG(RIDE_DISTANCE) FROM BOOKINGS
GROUP BY VEHICLE_TYPE;

 -- 3. Get the total number of cancelled rides by customers:
SELECT COUNT(*) FROM BOOKINGS
WHERE BOOKING_STATUS IN ('Driver Not Found','Canceled by Customer','Canceled by Driver');
 
 
-- 4. List the top 5 customers who booked the highest number of rides:
SELECT CUSTOMER_ID FROM BOOKINGS
ORDER BY BOOKING_ID
LIMIT 5;


 -- 5. Get the number of rides cancelled by drivers due to personal and car-related issues:
 SELECT COUNT(*) FROM BOOKINGS
 WHERE Canceled_RIDES_BY_DRIVER ='Personal & Car related issue';
 
 -- 6. Find the maximum and minimum driver ratings for Prime Sedan bookings:
 SELECT MAX(DRIVER_RATINGS), MIN(DRIVER_RATINGS) FROM BOOKINGS
 WHERE VEHICLE_TYPE='PRIME SEDAN';
 
 -- 7. Retrieve all rides where payment was made using UPI:
 SELECT COUNT(BOOKING_ID) , PAYMENT_METHOD
FROM BOOKINGS
WHERE PAYMENT_METHOD='UPI' AND VEHICLE_TYPE='PRIME SEDAN';
 
 -- 8. Find the average customer rating per vehicle type:
 SELECT AVG(CUSTOMER_RATING),VEHICLE_TYPE
 FROM BOOKINGS
 GROUP BY VEHICLE_TYPE;
 
 -- 9. Calculate the total booking value of rides completed successfully:
 SELECT SUM(BOOKING_VALUE) FROM BOOKINGS
 WHERE BOOKING_STATUS='SUCCESS';
 
--  10. List all incomplete rides along with the reason
SELECT BOOKING_ID, INCOMPLETE_RIDES_REASON FROM BOOKINGS
WHERE INCOMPLETE_RIDES ='YES';

