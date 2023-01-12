SELECT count(*) FROM sales.transactions;
select * from sales.transactions limit 5;
select count(*) from sales.transactions where market_code = 'Mark001';
select * from sales.transactions where market_code = 'Mark001';
select * from sales.transactions where currency = 'USD';
SELECT transactions.*, date.* FROM transactions INNER JOIN date ON transactions.order_date=date.date where date.year=2020;
SELECT sum(transactions.sales_amount) FROM transactions INNER JOIN date ON transactions.order_date=date.date where 
date.year=2020 and transactions.market_code = 'Mark001'; 

select distinct product_code from transactions where market_code='mark001';

SELECT SUM(transactions.sales_amount) FROM transactions INNER JOIN date ON transactions.order_date=date.date where date.year=2020 and 
transactions.currency="INR" or transactions.currency="USD";

SELECT SUM(transactions.sales_amount) FROM transactions INNER JOIN date ON transactions.order_date=date.date where date.year=2020 and date.month_name="January" and (transactions.currency="INR" or transactions.currency="USD");

SELECT SUM(transactions.sales_amount) FROM transactions INNER JOIN date ON transactions.order_date=date.date where date.year=2020 and transactions.market_code="Mark001"
