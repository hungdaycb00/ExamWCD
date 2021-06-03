create database EmployeeDB;
use EmployeeDB;

create table Employee(
                         id int auto_increment primary key ,
                         full_name varchar(50),
                         birthday varchar(50),
                         address varchar(50),
                         position varchar(50),
                         department varchar(50)
);

select * from Employee;
insert into Employee value (null,'Hoang Hoa','27/10/1990','Ha Noi', 'Nhan vien','Kinh doanh');
insert into Employee value (null,'Hoang Nam','20/10/1995','Ha Noi', 'Nhan vien','Kinh doanh');
insert into Employee value (null,'Manh Hung','20/10/1994','Cao Bang', 'Truong Phong','Kinh doanh');