select
	customername, creditLimit, repnum
from
	customer
where
	creditLimit >= 5000 and repnum = 45;