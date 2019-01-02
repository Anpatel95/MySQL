select
	distinct Customer.firstname, customer.lastname, customer.phone
from
	Customer,
    seminar,
    seminar_customer
where
	customer.customerID in(select distinct
			seminar_customer.customerID
		from
			seminar_customer
		where
			seminarID in (select distinct
					seminarId
				from
					seminar
				where
					seminar.SeminarTitle = 'Kitchen on a Big D Budget'));