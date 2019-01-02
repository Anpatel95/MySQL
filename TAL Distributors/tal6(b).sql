select
	customername, creditLimit, repnum
from
	customer
where 
	creditLimit >= 5000 and 
	repnum in (select distinct
			repnum
		from
			rep
		where
			firstname = 'Hui' and lastname = 'Tian');