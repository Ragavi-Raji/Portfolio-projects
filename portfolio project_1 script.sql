create database classdb1;
use classdb1;

select * from financial_loan_dataset;
#total loan application
select count(id) as total_loan_application from financial_loan_dataset;

#amount receieved by the bank
select sum(total_payment) as total_amount_collected from financial_loan_dataset;

#average rate of interest
select avg(int_rate)*100 as avg_interest_rate from financial_loan_dataset;

#average dti
select avg(dti)*100 as avg_dti from financial_loan_dataset;

#good loan application
select count(id) as good_loan_application from financial_loan_dataset;

#bad loan application
select count(id) as bad_loan_application from financial_loan_dataset;

#good load percentage
SELECT (COUNT(CASE WHEN loan_status = 'current' THEN id END) * 100) / COUNT(id) AS good_loan_percentage
FROM financial_loan_dataset;

# bad loan percentage
select (count(case when loan_status="charged off" then id end)*100)/count(id) as bad_loan_percentage
from financial_loan_dataset;

#good loan amount goven by the bank
select sum(loan_amount) as good_loan_amount from financial_loan_dataset
where loan_status="fully paid" or loan_status="current";

# bad loan amount given by the bank
select sum(loan_amount) as bad_loan_amount from financial_loan_dataset
where loan_status="charged off";

#bad loan amount received by the bank
select sum(total_payment) as bad_loan_amount_receieved from financial_loan_dataset
where loan_status="charged off";
