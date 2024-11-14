SELECT * FROM mobiles.mobile_analysis;
-- check mobile features and price --
SELECT phone_name,price FROM mobiles.mobile_analysis;

-- find out the price top 5 expensive phone --
SELECT * FROM mobiles.mobile_analysis
order by price desc
limit 5;

-- find out the price top 5 cheapest phone --
SELECT * FROM mobiles.mobile_analysis
order by price asc
limit 5;

-- top 5 samsung phone with price and feautures --
SELECT * FROM mobiles.mobile_analysis
where brands="samsung"
order by price desc
limit 5;

-- top 5 high price android phone --
SELECT * FROM mobiles.mobile_analysis
where Operating_System_Type="android"
order by price desc
limit 5;

-- top 5 low price android phone --
SELECT * FROM mobiles.mobile_analysis
where Operating_System_Type="android"
order by price asc
limit 5;

-- top 5 high price ios phone --
SELECT * FROM mobiles.mobile_analysis
where Operating_System_Type="ios"
order by price desc
limit 5;

-- top 5 low price ios phone --
SELECT * FROM mobiles.mobile_analysis
where Operating_System_Type="ios"
order by price asc
limit 5;

-- write a query which phone support 5g and top 5 phone with 5g support --
SELECT * FROM mobiles.mobile_analysis
where 5G_Availability="yes"
order by price desc
limit 5;

-- total price of all mobile is to be found with brand name --
select brands,sum(price) from mobiles.mobile_analysis 
group by Brands;
