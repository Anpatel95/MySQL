/********************************************************************************/
/*																				*/
/*	Kroenke and Auer - Database Concepts (7th Edition)	CH03/CH06/CH07			*/
/*																				*/
/*	Heather Sweeny Designs Database	Chapter 3 Case Questions - Insert Data	    */
/*																				*/
/*	These are the MySQL 5.6 SQL code solutions									*/
/*																				*/
/********************************************************************************/



/*****   CUSTOMER DATA   ********************************************************/

INSERT INTO CUSTOMER VALUES(
	null, 'Jacobs', 'Nancy', 'Nancy.Jacobs@somewhere.com', 'nf46tG9E', '817-871-8123',
	'1440 West Palm Drive', 'Fort Worth', 'TX', '76110');
INSERT INTO CUSTOMER VALUES(
	null, 'Jacobs', 'Chantel', 'Chantel.Jacobs@somewhere.com', 'b65TG03f', '817-871-8234',
	'1550 East Palm Drive', 'Fort Worth', 'TX', '76112');
INSERT INTO CUSTOMER VALUES(
	null,'Able', 'Ralph', 'Ralph.Able@somewhere.com', 'm56fGH08', '210-281-7987',
	'123 Elm Street', 'San Antonio', 'TX', '78214');
INSERT INTO CUSTOMER VALUES(
	null,'Baker', 'Susan', 'Susan.Baker@elsewhere.com', 'PC93fEk9', '210-281-7876',
	'456 Oak Street', 'San Antonio', 'TX', '78216');
INSERT INTO CUSTOMER VALUES(
	null,'Eagleton', 'Sam', 'Sam.Eagleton@elsewhere.com', 'bnvR44W8', '210-281-7765',
	'789 Pine Street', 'San Antonio', 'TX', '78218');
INSERT INTO CUSTOMER VALUES(
	null,'Foxtrot', 'Kathy', 'Kathy.Foxtrot@somewhere.com', 'aa8tY4GL', '972-233-6234',
	'11023 Elm Street', 'Dallas', 'TX', '75220');
INSERT INTO CUSTOMER VALUES(
	null,'George', 'Sally', 'Sally.George@somewhere.com', 'LK8G2tyF', '972-233-6345',
	'12034 San Jacinto', 'Dallas', 'TX', '75223');
INSERT INTO CUSTOMER VALUES(
	null,'Hullett', 'Shawn', 'Shawn.Hullett@elsewhere.com', 'bu78WW3t', '972-233-6456',
	'13045 Flora', 'Dallas', 'TX', '75224');
INSERT INTO CUSTOMER VALUES(
	null,'Pearson', 'Bobbi', 'Bobbi.Pearson@elsewhere.com', 'kq6N2O0p', '512-974-3344',
	'43 West 23rd Street', 'Auston', 'TX', '78710');
INSERT INTO CUSTOMER VALUES(
	null,'Ranger', 'Terry', 'Terry.Ranger@somewhere.com', 'bv3F9Qc4', '512-974-4455',
	'56 East 18th Street', 'Auston', 'TX', '78712');
INSERT INTO CUSTOMER VALUES(
	null,'Tyler', 'Jenny', 'Jenny.Tyler@somewhere.com', 'Yu4be77Z', '972-233-6567',
	'14056 South Ervay Street', 'Dallas', 'TX', '75225');
INSERT INTO CUSTOMER VALUES(
	null,'Wayne', 'Joan', 'Joan.Wayne@elsewhere.com', 'JW4TX6g', '817-871-8245',
	'1660 South Aspen Drive', 'Fort Worth', 'TX', '76115');


/*****   SEMINAR   **************************************************************/

INSERT INTO SEMINAR VALUES(
	null,'2013-10-12', '11:00', 'San Antonio Convention Center',
	'Kitchen on a Budget');
INSERT INTO SEMINAR VALUES(
	null,'2013-10-26', '16:00', 'Dallas Convention Center',
	'Kitchen on a Big D Budget');
INSERT INTO SEMINAR VALUES(
	null,'2013-11-02', '08:30', 'Austin Convention Center',
	'Kitchen on a Budget');
INSERT INTO SEMINAR VALUES(
	null,'2014-03-22', '11:00', 'Dallas Convention Center',
	'Kitchen on a Big D Budget');
INSERT INTO SEMINAR VALUES(
	null,'2014-03-23', '11:00', 'Dallas Convention Center',
	'Kitchen on a Big D Budget');
INSERT INTO SEMINAR VALUES(
	null,'2014-04-05', '08:30', 'Austin Convention Center',
	'Kitchen on a Budget');


/*****   SEMINAR_CUSTOMER DATA   ************************************************/

INSERT INTO SEMINAR_CUSTOMER VALUES(1, 1);
INSERT INTO SEMINAR_CUSTOMER VALUES(1, 2);
INSERT INTO SEMINAR_CUSTOMER VALUES(1, 3);
INSERT INTO SEMINAR_CUSTOMER VALUES(1, 4);
INSERT INTO SEMINAR_CUSTOMER VALUES(1, 5);
INSERT INTO SEMINAR_CUSTOMER VALUES(2, 6);
INSERT INTO SEMINAR_CUSTOMER VALUES(2, 7);
INSERT INTO SEMINAR_CUSTOMER VALUES(2, 8);
INSERT INTO SEMINAR_CUSTOMER VALUES(3, 9);
INSERT INTO SEMINAR_CUSTOMER VALUES(3, 10);
INSERT INTO SEMINAR_CUSTOMER VALUES(4, 6);
INSERT INTO SEMINAR_CUSTOMER VALUES(4, 7);
INSERT INTO SEMINAR_CUSTOMER VALUES(4, 11);
INSERT INTO SEMINAR_CUSTOMER VALUES(4, 12);


/*****   CONTACT DATA   *********************************************************/

-- 'Nancy.Jacobs@somewhere.com'
INSERT INTO CONTACT VALUES(1, 1, '2013-10-12', 'Seminar', 1);
-- 'Chantel.Jacobs@somewhere.com'
INSERT INTO CONTACT VALUES(2, 1, '2013-10-12', 'Seminar', 1);
-- 'Ralph.Able@somewhere.com'
INSERT INTO CONTACT VALUES(3, 1, '2013-10-12', 'Seminar', 1);
-- 'Susan.Baker@elsewhere.com'
INSERT INTO CONTACT VALUES(4, 1, '2013-10-12', 'Seminar', 1);
-- 'Sam.Eagleton@elsewhere.com'
INSERT INTO CONTACT VALUES(5, 1, '2013-10-12', 'Seminar', 1);

-- 'Nancy.Jacobs@somewhere.com',
INSERT INTO CONTACT (CustomerID, ContactNumber, ContactDate,  ContactType)
	VALUES(1, 2, '2013-10-15', 'EmailSeminarMessage');
-- 'Chantel.Jacobs@somewhere.com'
INSERT INTO CONTACT (CustomerID, ContactNumber, ContactDate,  ContactType)
	VALUES(2, 2, '2013-10-15', 'EmailSeminarMessage');
-- 'Ralph.Able@somewhere.com'
INSERT INTO CONTACT (CustomerID, ContactNumber, ContactDate,  ContactType)
	VALUES(3, 2, '2013-10-15', 'EmailSeminarMessage');
-- 'Susan.Baker@elsewhere.com'
INSERT INTO CONTACT (CustomerID, ContactNumber, ContactDate,  ContactType)
	VALUES(4, 2, '2013-10-15', 'EmailSeminarMessage');
-- 'Sam.Eagleton@elsewhere.com'
INSERT INTO CONTACT (CustomerID, ContactNumber, ContactDate,  ContactType)
	VALUES(5, 2, '2013-10-15', 'EmailSeminarMessage');


-- 'Nancy.Jacobs@somewhere.com',
INSERT INTO CONTACT (CustomerID, ContactNumber, ContactDate,  ContactType)
	VALUES(1, 3, '2013-10-15', 'FormLetterSeminar');
-- 'Chantel.Jacobs@somewhere.com'
INSERT INTO CONTACT (CustomerID, ContactNumber, ContactDate,  ContactType)
	VALUES(2, 3, '2013-10-15', 'FormLetterSeminar');
-- 'Ralph.Able@somewhere.com'
INSERT INTO CONTACT (CustomerID, ContactNumber, ContactDate,  ContactType)
	VALUES(3, 3, '2013-10-15', 'FormLetterSeminar');
-- 'Susan.Baker@elsewhere.com'
INSERT INTO CONTACT (CustomerID, ContactNumber, ContactDate,  ContactType)
	VALUES(4, 3, '2013-10-15', 'FormLetterSeminar');
-- 'Sam.Eagleton@elsewhere.com'
INSERT INTO CONTACT (CustomerID, ContactNumber, ContactDate,  ContactType)
	VALUES(5, 3, '2013-10-15', 'FormLetterSeminar');

-- 'Kathy.Foxtrot@somewhere.com'
INSERT INTO CONTACT VALUES(6, 1, '2013-10-26', 'Seminar', 2);
-- 'Sally.George@somewhere.com'
INSERT INTO CONTACT VALUES(7, 1, '2013-10-26', 'Seminar', 2);
-- 'Shawn.Hullett@elsewhere.com'
INSERT INTO CONTACT VALUES(8, 1, '2013-10-26', 'Seminar', 2);

-- 'Kathy.Foxtrot@somewhere.com'
INSERT INTO CONTACT (CustomerID, ContactNumber, ContactDate,  ContactType)
	VALUES(6, 2, '2013-10-30', 'EmailSeminarMessage');
-- 'Sally.George@somewhere.com'
INSERT INTO CONTACT (CustomerID, ContactNumber, ContactDate,  ContactType)
	VALUES(7, 2, '2013-10-30', 'EmailSeminarMessage');
-- 'Shawn.Hullett@elsewhere.com'
INSERT INTO CONTACT (CustomerID, ContactNumber, ContactDate,  ContactType)
	VALUES(8, 2, '2013-10-30', 'EmailSeminarMessage');

-- 'Kathy.Foxtrot@somewhere.com'
INSERT INTO CONTACT (CustomerID, ContactNumber, ContactDate,  ContactType)
	VALUES(6, 3, '2013-10-30', 'FormLetterSeminar');
-- 'Sally.George@somewhere.com'
INSERT INTO CONTACT (CustomerID, ContactNumber, ContactDate,  ContactType)
	VALUES(7, 3, '2013-10-30', 'FormLetterSeminar');
-- 'Shawn.Hullett@elsewhere.com'
INSERT INTO CONTACT (CustomerID, ContactNumber, ContactDate,  ContactType)
	VALUES(8, 3, '2013-10-30', 'FormLetterSeminar');

-- 'Bobbi.Pearson@elsewhere.com'
INSERT INTO CONTACT VALUES(9, 1, '2013-11-02', 'Seminar', 3);
-- 'Terry.Ranger@somewhere.com'
INSERT INTO CONTACT VALUES(10, 1, '2013-11-02', 'Seminar', 3);

-- 'Bobbi.Pearson@elsewhere.com'
INSERT INTO CONTACT (CustomerID, ContactNumber, ContactDate,  ContactType)
	VALUES(9, 2, '2013-11-06', 'EmailSeminarMessage');
-- 'Terry.Ranger@somewhere.com'
INSERT INTO CONTACT (CustomerID, ContactNumber, ContactDate,  ContactType)
	VALUES(10, 2, '2013-11-06', 'EmailSeminarMessage');

-- 'Bobbi.Pearson@elsewhere.com'
INSERT INTO CONTACT (CustomerID, ContactNumber, ContactDate,  ContactType)
	VALUES(9, 3, '2013-11-06', 'FormLetterSeminar');
-- 'Terry.Ranger@somewhere.com'
INSERT INTO CONTACT (CustomerID, ContactNumber, ContactDate,  ContactType)
	VALUES(10, 3, '2013-11-06', 'FormLetterSeminar');


-- 'Ralph.Able@somewhere.com'
INSERT INTO CONTACT (CustomerID, ContactNumber, ContactDate,  ContactType)
	VALUES(3, 4, '2014-02-20', 'WebAccountCreation');
-- 'Ralph.Able@somewhere.com'
INSERT INTO CONTACT (CustomerID, ContactNumber, ContactDate,  ContactType)
	VALUES(3, 5, '2014-02-20', 'EmailAccountMessage');
-- 'Kathy.Foxtrot@somewhere.com'
INSERT INTO CONTACT (CustomerID, ContactNumber, ContactDate,  ContactType)
	VALUES(6, 4, '2014-02-22', 'WebAccountCreation');
-- 'Kathy.Foxtrot@somewhere.com'
INSERT INTO CONTACT (CustomerID, ContactNumber, ContactDate,  ContactType)
	VALUES(6, 5, '2014-02-22', 'EmailAccountMessage');
-- 'Sally.George@somewhere.com'
INSERT INTO CONTACT (CustomerID, ContactNumber, ContactDate,  ContactType)
	VALUES(7, 4, '2014-02-25', 'WebAccountCreation');
-- 'Sally.George@somewhere.com'
INSERT INTO CONTACT (CustomerID, ContactNumber, ContactDate,  ContactType)
	VALUES(7, 5, '2014-02-25', 'EmailAccountMessage');
-- 'Shawn.Hullett@elsewhere.com'
INSERT INTO CONTACT (CustomerID, ContactNumber, ContactDate,  ContactType)
	VALUES(8, 4, '2014-03-07', 'WebAccountCreation');
-- 'Shawn.Hullett@elsewhere.com'
INSERT INTO CONTACT (CustomerID, ContactNumber, ContactDate,  ContactType)
	VALUES(8, 5, '2014-03-07', 'EmailAccountMessage');

-- 'Kathy.Foxtrot@somewhere.com'
INSERT INTO CONTACT VALUES(6, 6, '2014-03-22', 'Seminar', 4);
-- 'Sally.George@somewhere.com'
INSERT INTO CONTACT VALUES(7, 6, '2014-03-22', 'Seminar', 4);
-- 'Jenny.Tyler@somewhere.com'
INSERT INTO CONTACT VALUES(11, 1, '2014-03-22', 'Seminar', 4);
-- 'Joan.Wayne@elsewhere.com'
INSERT INTO CONTACT VALUES(12, 1, '2014-03-22', 'Seminar', 4);


/*****   PRODUCT DATA   *********************************************************/

INSERT INTO PRODUCT VALUES(
	'VK001', 'Video', 'Kitchen Remodeling Basics',14.95, 50);
INSERT INTO PRODUCT VALUES(
	'VK002', 'Video', 'Advanced Kitchen Remodeling', 14.95, 35);
INSERT INTO PRODUCT VALUES(
	'VK003', 'Video', 'Kitchen Remodeling Dallas Style', 19.95, 25);
INSERT INTO PRODUCT VALUES(
	'VK004', 'Video', 'Heather Sweeney Seminar Live in Dallas on 25-OCT-13', 24.95, 20);
INSERT INTO PRODUCT VALUES(
	'VB001', 'Video Companion', 'Kitchen Remodeling Basics', 7.99, 50);
INSERT INTO PRODUCT VALUES(
	'VB002', 'Video Companion', 'Advanced Kitchen Remodeling I',7.99, 35);
INSERT INTO PRODUCT VALUES(
	'VB003', 'Video Companion', 'Kitchen Remodeling Dallas Style', 9.99, 25);
INSERT INTO PRODUCT VALUES(
	'BK001', 'Book', 'Kitchen Remodeling Basics For Everyone', 24.95, 75);
INSERT INTO PRODUCT VALUES(
	'BK002', 'Book', 'Advanced Kitchen Remodeling For Everyone', 24.95, 75);
INSERT INTO PRODUCT VALUES(
	'BK003', 'Book', 'Kitchen Remodeling Dallas Style For Everyone', 24.95, 75);

/*****   INVOICE DATA    **************************************************/

/*****   Invoice 35000   **************************************************/
-- 'Ralph.Able@somewhere.com'
INSERT INTO INVOICE VALUES(
	null,'2013-10-15', 3, 'VISA', 22.94, 5.95, 1.31, 30.20);
INSERT INTO LINE_ITEM VALUES(35000, 1, 'VK001', 1, 14.95, 14.95);
INSERT INTO LINE_ITEM VALUES(35000, 2, 'VB001', 1, 7.99, 7.99);

/*****   Invoice 35001   **************************************************/
-- 'Susan.Baker@elsewhere.com'
INSERT INTO INVOICE VALUES(
	null,'2013-10-25', 4, 'MasterCard', 47.89, 5.95, 2.73, 56.57);
INSERT INTO LINE_ITEM VALUES(35001, 1, 'VK001', 1, 14.95, 14.95);
INSERT INTO LINE_ITEM VALUES(35001, 2, 'VB001', 1, 7.99, 7.99);
INSERT INTO LINE_ITEM VALUES(35001, 3, 'BK001', 1, 24.95, 24.95);

/*****   Invoice 35002   **************************************************/
-- 'Sally.George@somewhere.com'
INSERT INTO INVOICE VALUES(
	null,'2013-12-20', 7, 'VISA', 24.95, 5.95, 1.42, 32.32);
INSERT INTO LINE_ITEM VALUES(35002, 1, 'VK004', 1, 24.95, 24.95);

/*****   Invoice 35003   **************************************************/
-- 'Susan.Baker@elsewhere.com'
INSERT INTO INVOICE VALUES(
	null,'2014-03-25', 4, 'MasterCard', 64.85, 5.95, 3.70, 74.50);
INSERT INTO LINE_ITEM VALUES(35003, 1, 'VK002', 1, 14.95, 14.95);
INSERT INTO LINE_ITEM VALUES(35003, 2, 'BK002', 1, 24.95, 24.95);
INSERT INTO LINE_ITEM VALUES(35003, 3, 'VK004', 1, 24.95, 24.95);

/*****   Invoice 35004   ***************************************************/
-- 'Kathy.Foxtrot@somewhere.com'
INSERT INTO INVOICE VALUES(
	null,'2014-03-27', 6, 'MasterCard', 94.79, 5.95, 5.40, 106.14);
INSERT INTO LINE_ITEM VALUES(35004, 1, 'VK002', 1, 14.95, 14.95);
INSERT INTO LINE_ITEM VALUES(35004, 2, 'BK002', 1, 24.95, 24.95);
INSERT INTO LINE_ITEM VALUES(35004, 3, 'VK003', 1, 19.95, 19.95);
INSERT INTO LINE_ITEM VALUES(35004, 4, 'VB003', 1, 9.99, 9.99);
INSERT INTO LINE_ITEM VALUES(35004, 5, 'VK004', 1, 24.95, 24.95);

/*****   Invoice 35005   ***************************************************/
-- 'Sally.George@somewhere.com'
INSERT INTO INVOICE VALUES(
	null,'2014-03-27', 7, 'MasterCard', 94.80, 5.95, 5.40, 106.15);
INSERT INTO LINE_ITEM VALUES(35005, 1, 'BK001', 1, 24.95, 24.95);
INSERT INTO LINE_ITEM VALUES(35005, 2, 'BK002', 1, 24.95, 24.95);
INSERT INTO LINE_ITEM VALUES(35005, 3, 'VK003', 1, 19.95, 19.95);
INSERT INTO LINE_ITEM VALUES(35005, 4, 'VK004', 1, 24.95, 24.95);

/*****   Invoice 35006   ***************************************************/
-- 'Bobbi.Pearson@elsewhere.com'
INSERT INTO INVOICE VALUES(
	null,'2014-03-31', 9, 'VISA', 47.89,	5.95, 2.73, 56.57);
INSERT INTO LINE_ITEM VALUES(35006, 1, 'BK001', 1, 24.95, 24.95);
INSERT INTO LINE_ITEM VALUES(35006, 2, 'VK001', 1, 14.95, 14.95);
INSERT INTO LINE_ITEM VALUES(35006, 3, 'VB001', 1, 7.99, 7.99);

/*****   Invoice 35007   ***************************************************/
-- 'Jenny.Tyler@somewhere.com'
INSERT INTO INVOICE VALUES(
	null,'2014-04-03', 11, 'MasterCard', 109.78, 5.95, 6.26, 121.99);
INSERT INTO LINE_ITEM VALUES(35007, 1, 'VK003', 2, 19.95, 39.90);
INSERT INTO LINE_ITEM VALUES(35007, 2, 'VB003', 2, 9.99, 19.98);
INSERT INTO LINE_ITEM VALUES(35007, 3, 'VK004', 2, 24.95, 49.90);

/*****   Invoice 35008   ***************************************************/
-- 'Sam.Eagleton@elsewhere.com'
INSERT INTO INVOICE VALUES(
	null,'2014-04-08', 5, 'MasterCard', 47.89, 5.95, 2.73, 56.57);
INSERT INTO LINE_ITEM VALUES(35008, 1, 'BK001', 1, 24.95, 24.95);
INSERT INTO LINE_ITEM VALUES(35008, 2, 'VK001', 1, 14.95, 14.95);
INSERT INTO LINE_ITEM VALUES(35008, 3, 'VB001', 1, 7.99, 7.99);

/*****   Invoice 35009   ***************************************************/
-- 'Nancy.Jacobs@somewhere.com'
INSERT INTO INVOICE VALUES(
	null,'2014-04-08', 1, 'VISA', 47.89,	5.95, 2.73, 56.57);
INSERT INTO LINE_ITEM VALUES(35009, 1, 'BK001', 1, 24.95, 24.95);
INSERT INTO LINE_ITEM VALUES(35009, 2, 'VK001', 1, 14.95, 14.95);
INSERT INTO LINE_ITEM VALUES(35009, 3, 'VB001', 1, 7.99, 7.99);

/*****   Invoice 35010   ***************************************************/
-- 'Ralph.Able@somewhere.com'
INSERT INTO INVOICE VALUES(
	null,'2014-04-23', 3, 'VISA', 24.95,	5.95, 1.42, 32.32);
INSERT INTO LINE_ITEM VALUES(35010, 1, 'BK001', 1, 24.95, 24.95);

/*****   Invoice 35011   ***************************************************/
-- 'Bobbi.Pearson@elsewhere.com'
INSERT INTO INVOICE VALUES(
	null,'2014-05-07', 9, 'VISA', 22.94,	5.95, 1.31, 30.20);
INSERT INTO LINE_ITEM VALUES(35011, 1, 'VK002', 1, 14.95, 14.95);
INSERT INTO LINE_ITEM VALUES(35011, 2, 'VB002', 1, 7.99, 7.99);

/*****   Invoice 35012   ***************************************************/
-- 'Shawn.Hullett@elsewhere.com'
INSERT INTO INVOICE VALUES(
	null,'2014-05-21', 8, 'MasterCard', 54.89, 5.95, 3.13, 63.97);
INSERT INTO LINE_ITEM VALUES(35012, 1, 'VK003', 1, 19.95, 19.95);
INSERT INTO LINE_ITEM VALUES(35012, 2, 'VB003', 1, 9.99, 9.99);
INSERT INTO LINE_ITEM VALUES(35012, 3, 'VK004', 1, 24.95, 24.95);

/*****   Invoice 35013   ***************************************************/
-- 'Ralph.Able@somewhere.com'
INSERT INTO INVOICE VALUES(
	null,'2014-06-05', 3, 'VISA', 47.89,	5.95, 2.73, 56.57);
INSERT INTO LINE_ITEM VALUES(35013, 1, 'VK002', 1, 14.95, 14.95);
INSERT INTO LINE_ITEM VALUES(35013, 2, 'VB002', 1, 7.99, 7.99);
INSERT INTO LINE_ITEM VALUES(35013, 3, 'BK002', 1, 24.95, 24.95);

/*****   Invoice 35014   ***************************************************/
-- 'Jenny.Tyler@somewhere.com'
INSERT INTO INVOICE VALUES(
	null,'2014-06-05', 11, 'MasterCard', 45.88, 5.95, 2.62, 54.45);
INSERT INTO LINE_ITEM VALUES(35014, 1, 'VK002', 2, 14.95, 29.90);
INSERT INTO LINE_ITEM VALUES(35014, 2, 'VB002', 2, 7.99, 15.98);

/*****   Invoice 35015   ***************************************************/
-- 'Joan.Wayne@elsewhere.com'
INSERT INTO INVOICE VALUES(
	null,'2014-06-05', 12, 'MasterCard', 94.79, 5.95, 5.40, 106.14);
INSERT INTO LINE_ITEM VALUES(35015, 1, 'VK002', 1, 14.95, 14.95);
INSERT INTO LINE_ITEM VALUES(35015, 2, 'BK002', 1, 24.95, 24.95);
INSERT INTO LINE_ITEM VALUES(35015, 3, 'VK003', 1, 19.95, 19.95);
INSERT INTO LINE_ITEM VALUES(35015, 4, 'VB003', 1, 9.99, 9.99);
INSERT INTO LINE_ITEM VALUES(35015, 5, 'VK004', 1, 24.95, 24.95);

/*****   Invoice 35016   ***************************************************/
-- 'Ralph.Able@somewhere.com'
INSERT INTO INVOICE VALUES(
	null,'2014-06-05', 3, 'VISA', 45.88,	5.95, 2.62, 54.45);
INSERT INTO LINE_ITEM VALUES(35016, 1, 'VK001', 1, 14.95, 14.95);
INSERT INTO LINE_ITEM VALUES(35016, 2, 'VB001', 1, 7.99, 7.99);
INSERT INTO LINE_ITEM VALUES(35016, 3, 'VK002', 1, 14.95, 14.95);
INSERT INTO LINE_ITEM VALUES(35016, 4, 'VB002', 1, 7.99, 7.99);

/***************************************************************************/
