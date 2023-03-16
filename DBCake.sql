SET NOCOUNT ON
GO
USE master
GO
if exists (select * from sysdatabases where name='TiemBanhNgot')
		drop database TiemBanhNgot
GO

CREATE DATABASE TiemBanhNgot
GO

use TiemBanhNgot
GO

Create Table Users
(name nvarchar(50) ,
 pass nvarchar(50) not null,
 role int
)
GO

Create table DauBep
(Chef varchar(max),
img varchar(max),
ChuyenMon varchar(max),
Gender varchar(max),
rate int,
IdChef int 
constraint daubep_pk PRIMARY KEY(IdChef)
)
GO

Create table SinhNhat
(nameS nvarchar(max),
priceS float,
imgS nvarchar(max),
IdChef int foreign key references DauBep(IdChef)
)
GO

Create table TiecCuoi
(nameT nvarchar(max),
priceT float,
imgT nvarchar(max),
IdChef int foreign key references DauBep(IdChef)
)
GO

Create table Custom
(nameC nvarchar(max),
priceC float,
imgC nvarchar(max),
IdChef int foreign key references DauBep(IdChef)
)
GO


delete DauBep where Chef = 'Tung Lam'

ALTER INDEX daubep_pk ON DauBep  
DISABLE;   

ALTER INDEX daubep_pk ON DauBep  
REBUILD;

INSERT INTO Users VALUES ('admin','1234',1)
INSERT INTO Users VALUES ('hoa','123',2)
INSERT INTO Users VALUES ('la','12',3)
INSERT INTO Users VALUES ('canh','12',3)
INSERT INTO Users VALUES ('than','12',3)
INSERT INTO Users VALUES ('goc','12',3)
GO

INSERT INTO DauBep VALUES ('Tung Lam','img/Anh-1.png','Bep Truong','Nam', 156000,1)
INSERT INTO DauBep VALUES ('Thanh Tung','img/Anh-2.png','Bep Pho','Nam', 143000,2)
INSERT INTO DauBep VALUES ('ViVa','img/ANh-3.png','Bep Pho','Nam', 174000,3)
GO

INSERT INTO SinhNhat VALUES ('Banh sinh nhat 1', 150000, 'img/banh-sinh-nhat-1.jpg', 1)
INSERT INTO SinhNhat VALUES ('Banh sinh nhat 2', 260000, 'img/banh-sinh-nhat-2.jpg', 2)
INSERT INTO SinhNhat VALUES ('Banh sinh nhat 3', 350000, 'img/banh-sinh-nhat-3.jpg', 3)
INSERT INTO SinhNhat VALUES ('Banh sinh nhat 4', 460000, 'img/banh-sinh-nhat-4.jpg', 3)
INSERT INTO SinhNhat VALUES ('Banh sinh nhat 5', 540000, 'img/banh-sinh-nhat-5.jpg', 2)
INSERT INTO SinhNhat VALUES ('Banh sinh nhat 6', 610000, 'img/banh-sinh-nhat-6.jpg', 1)
GO

INSERT INTO TiecCuoi VALUES ('Banh tiec cuoi 1', 1500000, 'img/tiec-cuoi-1.jpg', 2)
INSERT INTO TiecCuoi VALUES ('Banh tiec cuoi 2', 2600000, 'img/tiec-cuoi-2.jpg', 2)
INSERT INTO TiecCuoi VALUES ('Banh tiec cuoi 3', 3500000, 'img/tiec-cuoi-3.jpeg', 3)
INSERT INTO TiecCuoi VALUES ('Banh tiec cuoi 4', 4600000, 'img/tiec-cuoi-4.jpg', 3)
INSERT INTO TiecCuoi VALUES ('Banh tiec cuoi 5', 5400000, 'img/tiec-cuoi-5.jpg', 1)
INSERT INTO TiecCuoi VALUES ('Banh tiec cuoi 6', 6100000, 'img/tiec-cuoi-6.jpg', 1)
GO

INSERT INTO Custom VALUES ('Banh tu thiet ke 1', 100000, 'img/custom-1.jpg', 2)
INSERT INTO Custom VALUES ('Banh tu thiet ke 2', 230000, 'img/custom-2.jpg', 2)
INSERT INTO Custom VALUES ('Banh tu thiet ke 3', 360000, 'img/custom-3.jpg', 3)
INSERT INTO Custom VALUES ('Banh tu thiet ke 4', 410000, 'img/custom-4.jpg', 3)
INSERT INTO Custom VALUES ('Banh tu thiet ke 5', 530000, 'img/custom-5.jpg', 1)
INSERT INTO Custom VALUES ('Banh tu thiet ke 6', 570000, 'img/custom-6.jpg', 1)
GO



select c.nameC, c.imgC, c.priceC, db.Chef from Custom c left join DauBep db
ON c.IdChef = db.IdChef
Where db.Chef = 'Thanh Tung'

select * from TiecCuoi
GO

select * from Users
GO
