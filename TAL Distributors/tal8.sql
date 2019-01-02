Select distinct
	orders.ordernum,
    orders.orderdate,
    customer.customernum,
    customer.customername
from
	customer,
    orders
where
	customer.customernum = orders.customernum
    
        