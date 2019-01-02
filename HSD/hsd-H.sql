select
	I.Invoicenumber
from 
	invoice As I
		JOIN
	line_item as L on I.Invoicenumber = L.Invoicenumber
		join
	product as P on P.productnumber = L.ProductNumber
where
	P.ProductDescription = 'Heather Sweeney Seminar Live in Dallas on 25-OCT-13';