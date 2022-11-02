----UC1---
CREATE DATABASE EMP_PAYROLL_SERVICE; 

---UC2---
CREATE TABLE EMPLOYEE_PAYROLL
 (
 Id int NOT NULL IDENTITY(1,1) PRIMARY KEY,
 NAME VARCHAR(100) NOT NULL,
 Salary FLOAT NOT NULL,
 StartDate DATE NOT NULL,
 );
 
 ---UC3----
 -------Inserting values into Employee_payroll table----------

INSERT INTO employee_payroll VALUES('Ankita','50000','12-july-2020');
INSERT INTO employee_payroll VALUES('Nilima','40000','12-jan-2010');
INSERT INTO employee_payroll VALUES('Priyanshu','15000','20-mar-2018');
INSERT INTO employee_payroll VALUES('Sachin','10000','15-FEB-2010');
INSERT INTO employee_payroll VALUES('himanshu','50000','13-apr-2025');

---------UC4-------------
------------Retrieving all the Tables value--------------
SELECT * FROM EMPLOYEE_PAYROLL;

-----------------UC5---------------------
 ------retrieve salary data for a particular employee------
select Salary from employee_payroll where Name='Nilima';
select * from employee_payroll where StartDate between cast('1-apr-2019' as date) and cast(getdate() as date);

----------------------UC6------------------
------Adding GENDER column to the employee_payroll table using ALTER keyword-------

ALTER TABLE employee_payroll ADD Gender CHAR(1);
------------Updating Gender using UPDATE keyword--------------
UPDATE employee_payroll SET Gender='M' WHERE Name='himanshu' or Name= 'Sachin';
UPDATE employee_payroll SET Gender='F' WHERE Name='Priyanshu' or Name= 'Ankita' or Name= 'Nilima';
SELECT * FROM EMPLOYEE_PAYROLL;

-------------UC7----------------------
-----------------Finding SUM,AVG,MIN,MAX,COUNT-----------------
SELECT SUM(Salary) as SumOfSalary FROM employee_payroll;
SELECT SUM(Salary) as SumOfSalary FROM employee_payroll WHERE Gender='M' GROUP BY Gender;
SELECT SUM(Salary) as SumOfSalary FROM employee_payroll WHERE Gender='F' GROUP BY Gender;

SELECT AVG(Salary) as Average FROM employee_payroll WHERE Gender='M' GROUP BY Gender;
SELECT MIN(Salary) as Minimum FROM employee_payroll WHERE Gender='M' GROUP BY Gender;

SELECT MAX(Salary) as Maximum FROM employee_payroll;

SELECT COUNT(Id) as Number_of_Emp FROM employee_payroll WHERE Gender='M' GROUP BY Gender;
SELECT COUNT(Id) as Number_of_Emp FROM employee_payroll WHERE Gender='F' GROUP BY Gender;

---------------------UC8--------------------
-----Extending employee_payroll table-----------

ALTER TABLE employee_payroll ADD Phone_Number varchar(20);
------Adding column with DEFAULT value-----
ALTER TABLE employee_payroll ADD Emp_Address varchar(20) DEFAULT 'INDIA';

ALTER TABLE employee_payroll ADD Emp_DEPT varchar(10)not null DEFAULT 'HR';

INSERT INTO employee_payroll VALUES('Dolly','25000','23-aug-2019','F','9833678738','pune',DEFAULT);
INSERT INTO employee_payroll VALUES('Tarun','25000','23-feb-2019','M','9833678538',DEFAULT,DEFAULT);

SELECT * FROM EMPLOYEE_PAYROLL;

-----------------UC9----------------
------Extending employee_payroll table-------

ALTER TABLE employee_payroll ADD Basic_Pay varchar(10), Deduction FLOAT(20), Taxable_Pay FLOAT(20), Income_Tax Float(20), Net_Pay float(20);
SELECT * FROM EMPLOYEE_PAYROLL;

---------UC10-----------------

UPDATE employee_payroll SET Phone_Number='9874637670',Emp_DEPT=DEFAULT;
UPDATE employee_payroll SET Phone_Number='9874888670',Emp_DEPT=' Hacker', Emp_Address = 'Hyderabad', Basic_Pay=12000,Deduction=5000,Taxable_Pay=2300,Income_Tax = 2564,Net_Pay=18000 WHERE Name='Himanshu';
UPDATE employee_payroll SET Phone_Number='9874117670',Emp_DEPT='Head', Emp_Address = 'Chennai', Basic_Pay=12000,Deduction=5000,Taxable_Pay=2300,Income_Tax = 2564,Net_Pay=10000 WHERE Name='Sayali';
UPDATE employee_payroll SET Phone_Number='9874227670',Emp_DEPT='Developer', Emp_Address = 'Pune', Basic_Pay=22000,Deduction=16000,Taxable_Pay=5300,Income_Tax = 5564,Net_Pay=22000 WHERE Name='Prajakta';
UPDATE employee_payroll SET Phone_Number='9874887670',Emp_DEPT='Developer', Emp_Address = 'Mumbai', Basic_Pay=13000,Deduction=5450,Taxable_Pay=2500,Income_Tax = 2564,Net_Pay=10000 WHERE Name='Nilima';
UPDATE employee_payroll SET Phone_Number='9874887670',Emp_DEPT='Marketing', Emp_Address = 'Bengaluru', Basic_Pay=14000,Deduction=5660,Taxable_Pay=2700,Income_Tax = 3564,Net_Pay=11000 WHERE Name='Priyanshu';
UPDATE employee_payroll SET Phone_Number='9833678738',Emp_DEPT='Purchasing', Emp_Address = DEFAULT, Basic_Pay=16000,Deduction=5660,Taxable_Pay=2800,Income_Tax = 5564,Net_Pay=14000 WHERE Name='Madhuri';
UPDATE employee_payroll SET Phone_Number='9833678538',Emp_DEPT='Resource', Emp_Address = 'Bengaluru', Basic_Pay=18000,Deduction=5440,Taxable_Pay=4400,Income_Tax = 4764,Net_Pay=16000 WHERE Name='Tarun';

----------------------------------
INSERT INTO employee_payroll VALUES('Terissa','48548','20-jan-2020','F','8758989','Nainital','Sales','54767',4875,4555,54767,376734);
select * from employee_payroll where Name='Terissa';
SELECT * FROM EMPLOYEE_PAYROLL;