create table employee (empid varchar(30),empname varchar(30),deptId varchar(30),salary number);
.mod columns
select * from employee;
insert into employee values ("e001","ali ahmad","d003",85870);
insert into employee values ("e002","sana javed","d001",75880);
insert into employee values ("e003","maria javed","d003",85000);
insert into employee values ("e004","ali nasir","d002",75000);
insert into employee values ("e005","adeel afzal","d003",85000);
insert into employee values ("e006","talha mushtaq","d002",70000);
insert into employee values ("e007","aihlam malik","d001",65000);
select * from employee;
create table dept (deptId varchar(30),deptName varchar(30));
insert into dept values("d001","sales");
insert into dept values("d002","purchase");
insert into dept values("d003","marketing");
select * from dept;
select sum(salary) as "Total Salary" from employee where deptId=(select deptId from dept where deptName="marketing");
alter table employee drop empname;
select * from employee;
alter table employee add city;
select * from employee;
update employee 
set city="FSD" where empid="e001";
update employee 
set city="ISB" where empid="e003";
update employee 
set city="LHR" where empid="e004";
select * from employee;