create database ola;
use ola;
show tables;
select * from bookings;

--- Q. Retrieve all successful bookings ?

create view successful_bookings as
select * from bookings 
where booking_status = "success" ;
select * from successful_bookings;

--- Q. Find the average ride distance for each vehicle type ?

create view ride_distance_for_each_vehicle as
select vehicle_type, avg(ride_distance) from bookings 
group by vehicle_type;
select * from ride_distance_for_each_vehicle ;

--- Q. Get the total number of cancelled rides by customers?

create view canceled_ride_by_customers as
select count(*) from bookings
where booking_status = "canceled by customer";
select * from canceled_ride_by_customers;

--- Q. List the top 5 customers who booked the highest number of rides?

create view top_5_customers as
select customer_id, count(booking_id) as total_rides from bookings
group by customer_id
order by total_rides desc limit 5;
select * from top_5_customers;

--- Q. Get the number of rides cancelled by drivers due to personal and car-related issues?

create view canceled_by_p_c_issue as
select * from bookings
where canceled_rides_by_driver = "personal & car related issue";
select * from canceled_by_p_c_issue;

--- Q. Find the maximum and minimum driver ratings for Prime Sedan bookings?

create view max_and_min_driving_rating as 
select max(driver_ratings) as max_ratings,
min(driver_ratings) as min_ratings from bookings
where vehicle_type = "prime sedan";
select * from  max_and_min_driving_rating;

--- Q. Retrieve all rides where payment was made using UPI?

create view payment_method_upi as
select * from bookings 
where payment_method = "upi";
select * from payment_method_upi;

--- Q. Find the average customer rating per vehicle type?

create view avg_customer_rating_per_vehicle as
select vehicle_type, avg(customer_rating) from bookings
group by vehicle_type;
select * from avg_customer_rating_per_vehicle;

--- Q. Calculate the total booking value of rides completed successfully?

create view total_successful_booking_value as
select sum(booking_value) from bookings
where booking_status = "success";
select * from total_successful_booking_value; 

--- Q. List all incomplete rides along with the reason?

create view incomplete_rides_reason as
select booking_id, incomplete_rides_reason from bookings
where incomplete_rides = "yes";
select * from incomplete_rides_reason;


------ retrieve all answers ------

--- Q. Retrieve all successful bookings:
select * from successful_bookings; 

--- Q. Find the average ride distance for each vehicle type:
select * from ride_distance_for_each_vehicle ; 

--- Q. Get the total number of cancelled rides by customers:
select * from canceled_ride_by_customers; 

--- Q. List the top 5 customers who booked the highest number of rides:
select * from top_5_customers; 

--- Q. Get the number of rides cancelled by drivers due to personal and car-related issues:
select * from canceled_by_p_c_issue; 

--- Q. Find the maximum and minimum driver ratings for Prime Sedan bookings:
select * from  max_and_min_driving_rating;

--- Q. Retrieve all rides where payment was made using UPI:
select * from payment_method_upi;

--- Q. Find the average customer rating per vehicle type:
select * from avg_customer_rating_per_vehicle; 

--- Q. Calculate the total booking value of rides completed successfully:
select * from total_successful_booking_value;

--- Q. List all incomplete rides along with the reason:
select * from incomplete_rides_reason; 



