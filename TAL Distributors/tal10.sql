select
	orders.orderdate,
    orders.ordernum,
    customer.customernum,
    customer.customername,
    rep.lastname,
    rep.firstname
from
	Orders,
    customer,
    rep
where
	orders.orderdate = '2015-10-15'
		and orders.customernum = customer.customernum
        and customer.RepNum = rep.repnum
        group by ordernum;
        