select
	ordernum, customernum, orderdate
from
	orders
    where customernum = '586'
    and 
    orders.orderdate = '2015-10-15';