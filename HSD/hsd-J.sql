select distinct
	c.firstname,
    c.lastname,
    c.phone,
    p.ProductNumber,
    p.ProductDescription
From
	customer as C
		Join
	invoice as I on C.CustomerID = I.CustomerID
		join
	line_item as L on I.InvoiceNumber = L.InvoiceNumber
		join
	product as p on L.ProductNumber = p.productnumber
where
	P.ProductNumber LIKE 'VK%' ORDER BY lastname ;