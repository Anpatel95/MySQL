select
	SUM(balance) as Total
from
	customer
where
	repnum in (select distinct
			repnum
		from
			rep
		where
			firstname = 'Rafael' and lastname = 'Campos');