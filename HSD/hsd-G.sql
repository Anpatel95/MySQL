select
	invoice.InvoiceNumber
from
	invoice
where
	invoicenumber in (select distinct
			invoicenumber
		from
			line_item
		where
			productnumber in(select distinct	
					productnumber
				from
					product
				where
					product.ProductDescription = 'Heather Sweeney Seminar Live in Dallas on 25-OCT-13'));