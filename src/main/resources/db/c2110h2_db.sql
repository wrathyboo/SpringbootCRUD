create database C2110H2_DB;

USE C2110H2_DB;

/****** Object:  Table Students    Script Date: 4/12/2023 10:29:37 AM ******/


CREATE TABLE Students(
	`stu_id` int primary key auto_increment NOT NULL,
	`full_name` nvarchar(50) NULL,
	`gender` bit NULL,
	`birthday` datetime NULL,
	`address` nvarchar(200) NULL,
	`class_name` nvarchar(100) NULL
);




INSERT Students (stu_id, full_name, gender, birthday, address, class_name) VALUES (2, N'Nguyễn Minh Thành', 1, CAST(N'2002-12-21 00:00:00.000' AS DateTime), N'Nam Trực - Nam Định', N'C2110H2');

INSERT Students (stu_id, full_name, gender, birthday, address, class_name) VALUES (3, N'Nguyễn Đức Anh', 1, CAST(N'2002-05-07 00:00:00.000' AS DateTime), N'Nho Quan - Ninh Bình', N'C2110H2');

INSERT Students (stu_id, full_name, gender, birthday, address, class_name) VALUES (4, N'Lê Hải Yến', 0, CAST(N'2002-11-25 00:00:00.000' AS DateTime), N'Yên Thủy - Hòa Bình', N'C2202I1');

INSERT Students (stu_id, full_name, gender, birthday, address, class_name) VALUES (5, N'Phạm Đức Mạnh', 1, CAST(N'2002-06-06 00:00:00.000' AS DateTime), N'Phổ Yên - Thái Nguyên', N'C2202I1');

INSERT Students (stu_id, full_name, gender, birthday, address, class_name) VALUES (6, N'Bùi Tiến Nam', 1, CAST(N'2002-10-02 00:00:00.000' AS DateTime), N'Ý Yên - Nam Định', N'C2110H2');

INSERT Students (stu_id, full_name, gender, birthday, address, class_name) VALUES (7, N'Phạm Quốc Anh', 1, CAST(N'2023-02-26 00:00:00.000' AS DateTime), N'Sông Công - Thái Nguyên', N'C2011H1');

INSERT Students (stu_id, full_name, gender, birthday, address, class_name) VALUES (8, N'Pháº¡m Thá»‹ Hiá» n', 0, CAST(N'2023-03-12 00:00:00.000' AS DateTime), N'Thanh Oai - HÃ  Ná»™i', N'C2009I2');

INSERT Students (stu_id, full_name, gender, birthday, address, class_name) VALUES (9, N'Phạm Thị Hiền', 0, CAST(N'2023-02-27 00:00:00.000' AS DateTime), N'Quốc Oai - Hà Nội', N'C2002M');

INSERT Students (stu_id, full_name, gender, birthday, address, class_name) VALUES (10, N'Phạm Thị Hiền', 0, CAST(N'2023-02-27 00:00:00.000' AS DateTime), N'Quốc Oai - Hà Nội', N'C2002M');

select * from Students;


