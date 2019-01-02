select
	orders.ordernum,
    orders.orderdate,
    orders.customernum,
    customer.customername
from
	orders,
    customer
where
	orderdate = '2015-10-13'
		and customer.customernum = orders.customerNum