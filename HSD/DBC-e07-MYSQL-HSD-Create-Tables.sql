/********************************************************************************/
/*																				*/
/*	Kroenke and Auer - Database Concepts (7th Edition) CH03/CH06/CH07			*/
/*																				*/
/*	Heather Sweeney Designs Database Chapter 3 Case Questions  - Create Tables	*/
/*																				*/
/*	These are the MySQL 5.6 SQL code solutions									*/
/*																				*/
/********************************************************************************/

# UNCOMMENT THESE DROP statements TO RE-RUN THIS SCRIPT


#drop table line_item;
#drop table invoice;
#drop table product;
#drop table contact;
#drop table seminar_customer;
#drop table customer;
#drop table seminar;

CREATE  TABLE CUSTOMER(
	CustomerID			Int				NOT NULL auto_increment,
	LastName			Char(25)		NOT NULL,
	FirstName			Char(25)		NOT NULL,
	EmailAddress		VarChar(100)	NOT NULL,
	EncryptedPassword	VarChar(50)		NULL,
	Phone				Char(12)		NOT NULL,
	StreetAddress		Char(35)		NULL,
	City				Char(35)		NULL DEFAULT 'Dallas',
	State				Char(2)			NULL DEFAULT 'TX',
	ZIP					Char(10)		NULL DEFAULT '75201',
	CONSTRAINT 			CUSTOMER_PK 	PRIMARY KEY(CustomerID),
	CONSTRAINT			CUSTOMER_EMAIL	UNIQUE(EmailAddress)
	);
	
CREATE  TABLE SEMINAR(
	SeminarID			Int				NOT NULL auto_increment,
	SeminarDate			Date			NOT NULL,
	SeminarTime			Time			NOT NULL,
	Location			VarChar(100)	NOT NULL,
	SeminarTitle		VarChar(100)	NOT NULL,
	CONSTRAINT 			SEMINAR_PK 		PRIMARY KEY(SeminarID)
	);

CREATE  TABLE SEMINAR_CUSTOMER(
	SeminarID			Int				NOT NULL,
	CustomerID			Int				NOT NULL,
	CONSTRAINT 			S_C_PK 			PRIMARY KEY(SeminarID, CustomerID),
	CONSTRAINT 			S_C_SEMINAR_FK  FOREIGN KEY(SeminarID)
							REFERENCES SEMINAR(SeminarID)
								ON UPDATE NO ACTION
								ON DELETE NO ACTION,
	CONSTRAINT 			S_C_CUSTOMER_FK    FOREIGN KEY(CustomerID)
							REFERENCES CUSTOMER(CustomerID)
								ON UPDATE NO ACTION
								ON DELETE NO ACTION
	);

CREATE  TABLE CONTACT(
	CustomerID			Int				NOT NULL,
	ContactNumber		Int				NOT NULL,
	ContactDate			Date			NOT NULL,
	ContactType			VarChar(30)		NOT NULL,
	SeminarID			Int				NULL,
	CONSTRAINT 			CONTACT_PK 		PRIMARY KEY(CustomerID, ContactNumber),
	CONSTRAINT			CONTACT_ContactType
							CHECK (ContactType IN ('Seminar', 'FormLetterSeminar',
								   'WebAccountCreation', 'WebPurchase',
								   'EmailAccountMessage', 'EmailSeminarMessage',
								   'EmailPurchaseMessage', 'EmailMessageExchange',
								   'PhoneConversation')),
	CONSTRAINT 			CONTACT_SEMINAR_FK FOREIGN KEY(SeminarID)
							REFERENCES SEMINAR(SeminarID)
								ON UPDATE NO ACTION
								ON DELETE NO ACTION,
	CONSTRAINT 			CONTACT_CUSTOMER_FK FOREIGN KEY(CustomerID)
							REFERENCES CUSTOMER(CustomerID)
								ON UPDATE NO ACTION
								ON DELETE NO ACTION
	);

CREATE  TABLE PRODUCT(
	ProductNumber		Char(35)		NOT NULL,
	ProductType			Char(24)		NOT NULL,
	ProductDescription	VarChar(100)	NOT NULL,
	UnitPrice			Numeric(9,2)	NOT NULL,
	QuantityOnHand		Int				NULL,
	CONSTRAINT 			PRODUCT_PK 		PRIMARY KEY(ProductNumber),
	CONSTRAINT			PRODUCT_ProductType
							CHECK (ProductType IN ('Video',
								   'Video Companion', 'Book'))
	);

CREATE  TABLE INVOICE(
    InvoiceNumber		Int				NOT NULL auto_increment,
	InvoiceDate			Date			NOT NULL,
	CustomerID			Int				NOT NULL,
	PaymentType			Char(25) 		NOT NULL DEFAULT 'Cash',
	SubTotal			Numeric(9,2)	NULL,
	Shipping			Numeric(9,2)	NULL,
	Tax					Numeric(9,2)	NULL,
	Total				Numeric(9,2)	NULL,	
    CONSTRAINT 			INVOICE_PK 		PRIMARY KEY (InvoiceNumber),
	CONSTRAINT			INVOICE_PaymentType
							CHECK (PaymentType IN ('VISA',
								'MasterCard', 'American Express',
								'PayPal', 'Check', 'Cash')),
	CONSTRAINT 			INVOICE_CUSTOMER_FK FOREIGN KEY(CustomerID)
							REFERENCES CUSTOMER(CustomerID)
								ON UPDATE NO ACTION
								ON DELETE NO ACTION
    ) auto_increment=35000;

CREATE  TABLE LINE_ITEM(
    InvoiceNumber		Int				NOT NULL,
	LineNumber			Int				NOT NULL,
	ProductNumber		Char(35) 		NOT NULL,
	Quantity			Int				NOT NULL,
	UnitPrice			Numeric(9,2)	NULL,
	Total				Numeric(9,2)	NULL,
	CONSTRAINT 			LINE_ITEM_PK 	PRIMARY KEY (InvoiceNumber, LineNumber),
	CONSTRAINT 			L_I_INVOICE_FK 	FOREIGN KEY(InvoiceNumber)
							REFERENCES INVOICE(InvoiceNumber)
								ON UPDATE NO ACTION
								ON DELETE CASCADE,
	CONSTRAINT 			L_I_PRODUCT_FK 	FOREIGN KEY(ProductNumber)
							REFERENCES PRODUCT (ProductNumber)
								ON UPDATE CASCADE
								ON DELETE NO ACTION
    );

/********************************************************************************/