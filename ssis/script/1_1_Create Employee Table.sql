
/*
	Label #1 Create Table 
*/
BEGIN  -- Label #1 
	if not exists(select * from sys.tables where [Name] = 'Employee')
	CREATE TABLE Employee
	(
		ID int primary key identity(1,1)
		,EmployeeID varchar(50)
		,FirstName varchar(100)
		,LastName varchar(100)
		,Email varchar(100)
		,PhoneNumber varchar(20)
		,ETLRunDate datetime default getdate()
	)
END
