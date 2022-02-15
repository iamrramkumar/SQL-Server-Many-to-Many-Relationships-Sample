create table Students (
RollNumber varchar(8) primary key,
Fullname nvarchar(50), 
address varchar(50),
contactNo bigint)

create table course(
Course_Id int primary key,
Course_name nvarchar(50),
Teacher_Name nvarchar(30), Class_Room varchar(5),
)

create table Course_Enrolement(
S_NO int identity(1,1), 
RollNumber varchar(8) Foreign key REFERENCES Students(RollNumber),
Course_Id int Foreign key REFERENCES course (Course_Id))

alter table Students DROP COLUMN course

insert into Students Values('16UL13', 'Balasubramanian', 'Kadayanallur, Thirunelveli',68456878756)
insert into Students Values('16UL21', 'Karthk J', 'Sivakasi, Virudhunagar',9746126480)
insert into Students Values('16UL22', 'Muniya Raj M', 'Sivakasi, Virudhunagar',9187652130)
insert into Students Values('16UL2', 'Muni Rajan M', 'Sriviliputhur, Virudhunagar',9789465320)
insert into Students Values('16UL42', 'Deepak N', 'Sivakasi, Virudhunagar',9884156616)
insert into Students Values('16UL46', 'Ramkumar R', 'Sivakasi, Virudhunagar',9876543210)

insert into course values (101,'Programming in C', 'Sunatha', 'C14')
insert into course values (103,'Programming in Java', 'Venkatesh Kumar R', 'C19')
insert into course values (102,'.Net Development', 'Bama Ruckmani', 'C21')
insert into course values (104,'Java Lab', 'Marimuthu T', 'PGLAB')
insert into course values (106,'Hindi', 'Vijaya Baskar Naidu', 'W13')
update course set Teacher_Name ='Marimuthu T' where Course_name = 'Java Lab'
UPDATE course
SET Teacher_Name = 'Marimuthu T'
WHERE Course_Id = 104
select *from course
select *from Course_Enrolement
select *from Students
insert into Course_Enrolement Values('16UL10', 102)
insert into Course_Enrolement Values('16UL46', 108)

insert into Course_Enrolement Values('16UL46', 101)
insert into Course_Enrolement Values('16UL13', 101)

insert into Course_Enrolement Values('16UL21', 101)
insert into Course_Enrolement Values('16UL22', 101)
insert into Course_Enrolement Values('16UL46', 103)
insert into Course_Enrolement Values('16UL46', 102)
insert into Course_Enrolement Values('16UL46', 106)
insert into Course_Enrolement Values('16UL43', 101)
insert into Course_Enrolement Values('16UL43', 106)
insert into Course_Enrolement Values('16UL46', 104)
insert into Course_Enrolement Values('16UL43', 101)
insert into Course_Enrolement Values('16UL13', 104)
insert into Course_Enrolement Values('16UL13', 102)
insert into Course_Enrolement Values('16UL43', 102)
insert into Course_Enrolement Values('16UL21', 103)
insert into Course_Enrolement Values('16UL22', 103)
