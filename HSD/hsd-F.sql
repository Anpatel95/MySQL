select 
	lastname, firstname, phone
from 
	customer
where
	city = 'Dallas' and  lastname Like 'T%';