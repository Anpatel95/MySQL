select distinct
	SC.SeminarID,
    S.SeminarDate
    Location,
    S.SeminarTitle,
    SC.CustomerID,
    lastname,
    firstname
from
	Seminar S
		Left outer join
	seminar_customer SC on S.SeminarID = Sc.SeminarID
		Left outer join
	customer C on SC.customerId = C.CustomerID
order by customerID , SeminarID