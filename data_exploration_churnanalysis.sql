create database Churn_Analysis;

use Churn_Analysis;

select distinct customer_status from customer_data;

-- DATA EXPLORATION
-- checking distribution of gender 
-- there are more female than male 

select gender, count(gender) as countgender,
count(gender)  / (select count(*) from customer_data) * 100 as percentage
from customer_data
group by gender;


-- checking state distribution 
-- most of the customer in our data are from uttar pradesh followed by tamil nadu
-- and the leats are chattishgarh and puducherry

select state, count(state) as countstate,
count(state)  / (select count(*) from customer_data) * 100 as percentage
from customer_data
group by state
order by countstate desc;

-- contract distribution 
-- there are more month-to-month contract compare to two year and one year

select contract, count(contract) as countcontract,
count(contract)  / (select count(*) from customer_data) * 100 as percentage
from customer_data
group by contract
order by countcontract desc;

-- customer status 

select customer_status , count(customer_status ) as statuscount,
count(customer_status ) / (select count(*) from customer_data) * 100 as percentage
from customer_data
group by customer_status;

-- payment method 

select payment_method, count(payment_method) as methodscount,
count(payment_method) / (select count(*) from customer_data) * 100 as percentage
from customer_data
group by payment_method;

select distinct Internet_Type from customer_data;


