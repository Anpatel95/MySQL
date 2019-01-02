/******************************************************************************/
/*										                                    */
/*	Kroenke and Auer - Database Concepts (7th Edition) Ch 01,02,03		 	*/
/*											                                */
/*	Wedgewood Pacific Corporation [WPC] Create Tables	      	   			*/
/*															                */
/*	These are the MySQL 5.6 SQL code solutions       					     */
/*	PROJECT.ProjectID entered manually: starts at 1000 increments by 100	 */		
/******************************************************************************/

CREATE  TABLE DEPARTMENT(
	DepartmentName	Char(35)		 NOT NULL,
	BudgetCode		  Char(30)	 	 NOT NULL,
	OfficeNumber	  Char(15)		 NOT NULL,
	Phone			      Char(12)		 NOT NULL,
	CONSTRAINT 		  DEPARTMENT_PK 	PRIMARY KEY(DepartmentName)
	);

CREATE  TABLE EMPLOYEE(
	EmployeeNumber	Int 			    NOT NULL auto_increment,
	FirstName		    Char(25) 		  NOT NULL,
	LastName        Char(25) 		  NOT NULL,
	Department		  Char(35)		  NOT NULL,
	Phone			      Char(12)		  NULL,
	Email 			    VarChar(100)	NOT NULL UNIQUE,
	CONSTRAINT 		  EMPLOYEE_PK 	PRIMARY KEY(EmployeeNumber),
	CONSTRAINT 		  EMP_DEPART_FK FOREIGN KEY(Department)
						          REFERENCES DEPARTMENT(DepartmentName)
	);



CREATE  TABLE PROJECT(
  ProjectID	     Int		          NOT NULL ,
	ProjectName	   Char(50) 	      NOT NULL,
	Department	   Char(35)	        NOT NULL,
	MaxHours	     Numeric(8,2)	    NOT NULL,
  StartDate      Date             NULL,
  EndDate		     Date   	        NULL,
  CONSTRAINT 	   PROJECT_PK 	    PRIMARY KEY (ProjectID),
	CONSTRAINT 	   PROJ_DEPART_FK	  FOREIGN KEY (Department)
					              REFERENCES DEPARTMENT(DepartmentName)
						                    
  );
  


CREATE  TABLE ASSIGNMENT (
  ProjectID	     Int	 	          NOT NULL,
	EmployeeNumber Int	 	          NOT NULL,
  HoursWorked	   Numeric(6,2)	    NULL,
  CONSTRAINT 	   ASSIGNMENT_PK 	  PRIMARY KEY(ProjectID, EmployeeNumber),
  CONSTRAINT 	   ASSIGN_PROJ_FK   FOREIGN KEY (ProjectID)
              					REFERENCES PROJECT (ProjectID)
                           ON DELETE CASCADE,
  CONSTRAINT 	   ASSIGN_EMP_FK    FOREIGN KEY (EmployeeNumber)
              					REFERENCES EMPLOYEE(EmployeeNumber)
  );

/********************************************************************************/
/********************************************************************************/