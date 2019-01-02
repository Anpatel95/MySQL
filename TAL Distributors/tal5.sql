select
	customername, CustomerNum
from
	customer
where
	customernum IN ( SELECT distinct
			customernum
        from
			orders
		where
			 ordernum IN (SELECT distinct
					ordernum
				from
					orderline
				group by ordernum
                having count(ordernum) >= 2 ));