-- Finding Null values and replacing null values with appropriate values
-- at the time of importing the data mysql didnt took care of null values instead it recognize as empty string values
-- so when running below code will not able to find the null value in each column
-- in order to do so have to update each column to represent null value with empty string value 


-- disabling safe update mode 
-- in order to unable have to set = 1

SET SQL_SAFE_UPDATES = 0;

UPDATE customer_data
SET value_deal = NULL
WHERE value_deal = '';

SELECT COUNT(*) 
FROM customer_data
WHERE value_deal IS NULL;


select * from customer_data;

-- updating each column with null where the value is emplty string ''
-- after updating all the columns time to count the number of null values in each column

UPDATE customer_data
SET
    -- Customer_ID = CASE WHEN Customer_ID = '' THEN NULL ELSE Customer_ID END,
    Gender = CASE WHEN Gender = '' THEN NULL ELSE Gender END,
    Age = CASE WHEN Age = '' THEN NULL ELSE Age END,
    Married = CASE WHEN Married = '' THEN NULL ELSE Married END,
    State = CASE WHEN State = '' THEN NULL ELSE State END,
    Number_of_Referrals = CASE WHEN Number_of_Referrals = '' THEN NULL ELSE Number_of_Referrals END,
    Tenure_in_Months = CASE WHEN Tenure_in_Months = '' THEN NULL ELSE Tenure_in_Months END,
    -- Value_Deal = CASE WHEN Value_Deal = '' THEN NULL ELSE Value_Deal END,
    Phone_Service = CASE WHEN Phone_Service = '' THEN NULL ELSE Phone_Service END,
    Multiple_Lines = CASE WHEN Multiple_Lines = '' THEN NULL ELSE Multiple_Lines END,
    Internet_Service = CASE WHEN Internet_Service = '' THEN NULL ELSE Internet_Service END,
    Internet_Type = CASE WHEN Internet_Type = '' THEN NULL ELSE Internet_Type END,
    Online_Security = CASE WHEN Online_Security = '' THEN NULL ELSE Online_Security END,
    Online_Backup = CASE WHEN Online_Backup = '' THEN NULL ELSE Online_Backup END,
    Device_Protection_Plan = CASE WHEN Device_Protection_Plan = '' THEN NULL ELSE Device_Protection_Plan END,
    Premium_Support = CASE WHEN Premium_Support = '' THEN NULL ELSE Premium_Support END,
    Streaming_TV = CASE WHEN Streaming_TV = '' THEN NULL ELSE Streaming_TV END,
    Streaming_Movies = CASE WHEN Streaming_Movies = '' THEN NULL ELSE Streaming_Movies END,
    Streaming_Music = CASE WHEN Streaming_Music = '' THEN NULL ELSE Streaming_Music END,
    Unlimited_Data = CASE WHEN Unlimited_Data = '' THEN NULL ELSE Unlimited_Data END,
    Contract = CASE WHEN Contract = '' THEN NULL ELSE Contract END,
    Paperless_Billing = CASE WHEN Paperless_Billing = '' THEN NULL ELSE Paperless_Billing END,
    Payment_Method = CASE WHEN Payment_Method = '' THEN NULL ELSE Payment_Method END,
    Monthly_Charge = CASE WHEN Monthly_Charge = '' THEN NULL ELSE Monthly_Charge END,
    Total_Charges = CASE WHEN Total_Charges = '' THEN NULL ELSE Total_Charges END,
    Total_Refunds = CASE WHEN Total_Refunds = '' THEN NULL ELSE Total_Refunds END,
    Total_Extra_Data_Charges = CASE WHEN Total_Extra_Data_Charges = '' THEN NULL ELSE Total_Extra_Data_Charges END,
    Total_Long_Distance_Charges = CASE WHEN Total_Long_Distance_Charges = '' THEN NULL ELSE Total_Long_Distance_Charges END,
    Total_Revenue = CASE WHEN Total_Revenue = '' THEN NULL ELSE Total_Revenue END,
    Customer_Status = CASE WHEN Customer_Status = '' THEN NULL ELSE Customer_Status END,
    Churn_Category = CASE WHEN Churn_Category = '' THEN NULL ELSE Churn_Category END,
    Churn_Reason = CASE WHEN Churn_Reason = '' THEN NULL ELSE Churn_Reason END
    
WHERE
    Customer_ID = '' OR
    Gender = '' OR
    Age = '' OR
    Married = '' OR
    State = '' OR
    Number_of_Referrals = '' OR
    Tenure_in_Months = '' OR
    Value_Deal = '' OR
    Phone_Service = '' OR
    Multiple_Lines = '' OR
    Internet_Service = '' OR
    Internet_Type = '' OR
    Online_Security = '' OR
    Online_Backup = '' OR
    Device_Protection_Plan = '' OR
    Premium_Support = '' OR
    Streaming_TV = '' OR
    Streaming_Movies = '' OR
    Streaming_Music = '' OR
    Unlimited_Data = '' OR
    Contract = '' OR
    Paperless_Billing = '' OR
    Payment_Method = '' OR
    Monthly_Charge = '' OR
    Total_Charges = '' OR
    Total_Refunds = '' OR
    Total_Extra_Data_Charges = '' OR
    Total_Long_Distance_Charges = '' OR
    Total_Revenue = '' OR
    Customer_Status = '' OR
    Churn_Category = '' OR
    Churn_Reason = '' ;


select 
sum(case when Customer_ID is null then 1 else 0 end) as customerid_null_check,
 sum(case when Gender is null then 1 else 0 end) as Gender_null_check,
 sum(case when age is null then 1 else 0 end) as age_null_check,
 sum(case when married is null then 1 else 0 end) as married_null_check,
 sum(case when state is null then 1 else 0 end) as state_null_check,
 sum(case when Number_of_Referrals is null then 1 else 0 end) as Number_of_Referrals_null_check,
 sum(case when Tenure_in_Months is null then 1 else 0 end) as Tenure_in_Months_null_check,
 sum(case when Value_Deal is null then 1 else 0 end) as Value_Deal_null_check,
sum(case when Phone_Service is null then 1 else 0 end) as Phone_Service_null_check,
sum(case when Internet_Service is null then 1 else 0 end) as Internet_Service_null_check,
sum(case when Internet_Type is null then 1 else 0 end) as Internet_Type_null_check,
sum(case when Online_Security is null then 1 else 0 end) as Online_Security_null_check,
sum(case when Online_Backup is null then 1 else 0 end) as Online_Backup_null_check,
sum(case when Device_Protection_Plan is null then 1 else 0 end) as Device_Protection_Plan_null_check,
sum(case when Premium_Support is null then 1 else 0 end) as Premium_Support_null_check,
sum(case when Streaming_TV is null then 1 else 0 end) as Streaming_TV_null_check,
sum(case when Streaming_Movies is null then 1 else 0 end) as Streaming_Movies_null_check,
sum(case when Streaming_Music is null then 1 else 0 end) as Streaming_Music_null_check,
sum(case when Unlimited_Data is null then 1 else 0 end) as Unlimited_Data_null_check,
sum(case when Contract is null then 1 else 0 end) as Contract_null_check,
sum(case when Paperless_Billing is null then 1 else 0 end) as Paperless_Billing_null_check,
sum(case when Monthly_Charge is null then 1 else 0 end) as Monthly_Charge_null_check,
sum(case when Payment_Method is null then 1 else 0 end) as Payment_Method_null_check,
sum(case when Total_Charges is null then 1 else 0 end) as Total_Charges_null_check,
sum(case when Total_Refunds is null then 1 else 0 end) as Total_Refunds_null_check,
sum(case when Total_Extra_Data_Charges is null then 1 else 0 end) as Total_Extra_Data_Charges_null_check,
sum(case when Total_Long_Distance_Charges is null then 1 else 0 end) as Total_Long_Distance_Charges_null_check,
sum(case when Total_Revenue is null then 1 else 0 end) as Total_Revenue_null_check,
sum(case when Customer_Status is null then 1 else 0 end) as Customer_Status_null_check,
sum(case when Churn_Category is null then 1 else 0 end) as Churn_Category_null_check,
sum(case when Churn_Reason is null then 1 else 0 end) as Churn_Reason_null_check
from customer_data;


set SQL_SAFE_UPDATES = 1;

-- now we know the null counts for each column its good to fill those null values with appropriate value 
-- generally filling up categorical columns which we ease up our analysis as well as at the time creating dashboard and reports 
-- ISNULL dont work MYSQL instead we can use ifnull with same functionality as isnull in mysql server 
-- instead of selecting into new table which created problem we can use create table tablename as then our select statement 


CREATE TABLE prod_Churn AS
SELECT 
    Customer_ID,
    Gender,
    Age,
    Married,
    State,
    Number_of_Referrals,
    Tenure_in_Months,
    IFNULL(Value_Deal, 'None') AS Value_Deal,
    Phone_Service,
    IFNULL(Multiple_Lines, 'No') AS Multiple_Lines,
    Internet_Service,
    IFNULL(Internet_Type, 'None') AS Internet_Type,
    IFNULL(Online_Security, 'No') AS Online_Security,
    IFNULL(Online_Backup, 'No') AS Online_Backup,
    IFNULL(Device_Protection_Plan, 'No') AS Device_Protection_Plan,
    IFNULL(Premium_Support, 'No') AS Premium_Support,
    IFNULL(Streaming_TV, 'No') AS Streaming_TV,
    IFNULL(Streaming_Movies, 'No') AS Streaming_Movies,
    IFNULL(Streaming_Music, 'No') AS Streaming_Music,
    IFNULL(Unlimited_Data, 'No') AS Unlimited_Data,
    Contract,
    Paperless_Billing,
    Payment_Method,
    Monthly_Charge,
    Total_Charges,
    Total_Refunds,
    Total_Extra_Data_Charges,
    Total_Long_Distance_Charges,
    Total_Revenue,
    Customer_Status,
    IFNULL(Churn_Category, 'Other') AS Churn_Category,
    IFNULL(Churn_Reason, 'Others') AS Churn_Reason
FROM customer_data;

-- Still we have null values in our numerical varaiable.
-- but half of the problem have been resolved.

-- creating view for targated variable i.e customer_status for prediction of customer churn 

create view vw_churn_data as 
select * from prod_churn where Customer_Status in ('Stayed', 'Churned');

create view vw_joined_data as 
select * from prod_churn where customer_status = 'Joined';


